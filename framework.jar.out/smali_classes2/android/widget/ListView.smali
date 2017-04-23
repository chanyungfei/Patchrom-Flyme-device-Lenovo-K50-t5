.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$FixedViewInfo;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$ArrowScrollFocusResult;
    }
.end annotation


# static fields
.field private static final IS_ENG_BUILD:Z

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private mAbandonActiveViews:Z

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/ListView;->IS_ENG_BUILD:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 163
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 125
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 126
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 140
    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 142
    iput-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 145
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 150
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$ArrowScrollFocusResult;)V

    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 156
    iput-boolean v8, p0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    .line 174
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    .line 173
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 176
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 177
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 178
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 189
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 190
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 194
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 195
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_3
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 200
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 202
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 203
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 207
    .end local v2    # "dividerHeight":I
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 208
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 210
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3187
    add-int/lit8 v2, p2, -0x1

    .line 3188
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3189
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3190
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 3191
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    .line 3190
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3192
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3196
    add-int/lit8 v2, p2, 0x1

    .line 3197
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3198
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3199
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 3200
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    .line 3199
    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3201
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 229
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 232
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 235
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 237
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 240
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 242
    :cond_0
    if-gez v2, :cond_1

    .line 244
    const/4 v2, 0x0

    .line 262
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 263
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 225
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 248
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 251
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 254
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 257
    :cond_4
    if-lez v2, :cond_1

    .line 258
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 2796
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2797
    .local v4, "listBottom":I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2799
    .local v5, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2801
    .local v7, "numChildren":I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_6

    .line 2802
    add-int/lit8 v3, v7, -0x1

    .line 2803
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2804
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2806
    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    .line 2808
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 2809
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2811
    :cond_1
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2812
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2814
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 2815
    .local v1, "goalBottom":I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    .line 2816
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2819
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_3

    .line 2821
    const/4 v10, 0x0

    return v10

    .line 2824
    :cond_3
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4

    .line 2825
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 2827
    const/4 v10, 0x0

    return v10

    .line 2830
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2832
    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v10, v11, :cond_5

    .line 2834
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2835
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2838
    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10

    .line 2840
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .line 2841
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    .line 2842
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2844
    :cond_7
    :goto_1
    if-gez v3, :cond_8

    .line 2846
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 2847
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2848
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_1

    .line 2850
    :cond_8
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2851
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2852
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 2853
    .local v2, "goalTop":I
    if-lez v8, :cond_9

    .line 2854
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2856
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_a

    .line 2858
    const/4 v10, 0x0

    return v10

    .line 2861
    :cond_a
    const/4 v10, -0x1

    if-eq p2, v10, :cond_b

    .line 2862
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_b

    .line 2864
    const/4 v10, 0x0

    return v10

    .line 2867
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2868
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v10, :cond_c

    .line 2870
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2871
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2873
    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3065
    const/4 v0, 0x0

    .line 3066
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3067
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3068
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3069
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3070
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3071
    if-lez p3, :cond_0

    .line 3072
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3084
    :cond_0
    :goto_0
    return v0

    .line 3076
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3077
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3078
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3079
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3080
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 2963
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2965
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2966
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2967
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2992
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 2993
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2997
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 2998
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2999
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    .line 3000
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_9

    if-ge v10, v9, :cond_9

    .line 3002
    :cond_0
    const/4 v14, 0x0

    return-object v14

    .line 2969
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v9    # "positionOfNewFocus":I
    .end local v10    # "selectablePosition":I
    :cond_1
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    .line 2970
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v14, :cond_2

    const/4 v12, 0x1

    .line 2971
    .local v12, "topFadingEdgeShowing":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    .line 2972
    if-eqz v12, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    .line 2971
    :goto_2
    add-int v5, v15, v14

    .line 2974
    .local v5, "listTop":I
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_4

    .line 2975
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2977
    .local v13, "ySearchPoint":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2989
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 2970
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "topFadingEdgeShowing":Z
    goto :goto_1

    .line 2972
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 2976
    .restart local v5    # "listTop":I
    :cond_4
    move v13, v5

    .restart local v13    # "ySearchPoint":I
    goto :goto_3

    .line 2980
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    .end local v13    # "ySearchPoint":I
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mItemCount:I

    if-ge v14, v15, :cond_6

    const/4 v2, 0x1

    .line 2981
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    .line 2982
    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    .line 2981
    :goto_6
    sub-int v4, v15, v14

    .line 2984
    .local v4, "listBottom":I
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_8

    .line 2985
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2987
    .restart local v13    # "ySearchPoint":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 2980
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "bottomFadingEdgeShowing":Z
    goto :goto_5

    .line 2982
    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    .line 2986
    .restart local v4    # "listBottom":I
    :cond_8
    move v13, v4

    .restart local v13    # "ySearchPoint":I
    goto :goto_7

    .line 3001
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    .restart local v10    # "selectablePosition":I
    :cond_9
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-gt v10, v9, :cond_0

    .line 3006
    .end local v10    # "selectablePosition":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 3008
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 3009
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_b

    .line 3011
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3012
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3013
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v14

    .line 3014
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3019
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3020
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3021
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v14

    .line 3024
    .end local v3    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    return-object v14
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2577
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_0

    .line 2578
    return v9

    .line 2581
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2582
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2584
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2585
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2588
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_a

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2589
    :goto_0
    if-eqz v1, :cond_1

    .line 2590
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2591
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2594
    :cond_1
    if-eqz v1, :cond_b

    const/4 v3, 0x1

    .line 2595
    .local v3, "needToRedraw":Z
    :goto_1
    if-eq v4, v10, :cond_3

    .line 2596
    if-eqz v1, :cond_c

    move v7, v8

    :goto_2
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2597
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2598
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2599
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2600
    move v5, v4

    .line 2601
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_2

    if-nez v1, :cond_2

    .line 2604
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2605
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2606
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2609
    .end local v2    # "focused":Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    .line 2610
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2613
    :cond_3
    if-lez v0, :cond_4

    .line 2614
    const/16 v7, 0x21

    if-ne p1, v7, :cond_d

    .end local v0    # "amountToScroll":I
    :goto_3
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2615
    const/4 v3, 0x1

    .line 2620
    :cond_4
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_6

    if-nez v1, :cond_6

    .line 2621
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    .line 2620
    if-eqz v7, :cond_6

    .line 2622
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2623
    .restart local v2    # "focused":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 2624
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_6

    .line 2625
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2631
    .end local v2    # "focused":Landroid/view/View;
    :cond_6
    if-ne v4, v10, :cond_7

    if-eqz v6, :cond_7

    .line 2632
    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2641
    .end local v6    # "selectedView":Landroid/view/View;
    :cond_7
    :goto_4
    if-eqz v3, :cond_f

    .line 2642
    if-eqz v6, :cond_8

    .line 2643
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2644
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2646
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2647
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2649
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2650
    return v8

    .line 2588
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    .restart local v6    # "selectedView":Landroid/view/View;
    :cond_a
    const/4 v1, 0x0

    .local v1, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    goto/16 :goto_0

    .line 2594
    .end local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "needToRedraw":Z
    goto :goto_1

    :cond_c
    move v7, v9

    .line 2596
    goto :goto_2

    .line 2614
    :cond_d
    neg-int v0, v0

    goto :goto_3

    .line 2633
    .end local v0    # "amountToScroll":I
    :cond_e
    const/4 v6, 0x0

    .line 2634
    .local v6, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2638
    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    goto :goto_4

    .line 2653
    .end local v6    # "selectedView":Landroid/view/View;
    :cond_f
    return v9
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 554
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 556
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 557
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 558
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 559
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 560
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 556
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 2216
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2220
    iget-boolean v3, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v3, :cond_0

    .line 2221
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2224
    :cond_0
    const/4 v2, 0x0

    .line 2225
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2227
    .local v0, "action":I
    if-eq v0, v7, :cond_1

    .line 2228
    sparse-switch p1, :sswitch_data_0

    .line 2344
    .end local v2    # "handled":Z
    :cond_1
    :goto_0
    :sswitch_0
    if-eqz v2, :cond_14

    .line 2345
    return v7

    .line 2217
    .end local v0    # "action":I
    :cond_2
    return v4

    .line 2230
    .restart local v0    # "action":I
    .restart local v2    # "handled":Z
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2231
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2232
    .local v2, "handled":Z
    if-nez v2, :cond_1

    .end local v2    # "handled":Z
    :goto_1
    move v1, p2

    .line 2233
    .end local p2    # "count":I
    .local v1, "count":I
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_1

    .line 2234
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2235
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_1

    .line 2241
    :cond_3
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2242
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_0

    .local v2, "handled":Z
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 2247
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2248
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2249
    .local v2, "handled":Z
    if-nez v2, :cond_1

    .end local v2    # "handled":Z
    :goto_2
    move v1, p2

    .line 2250
    .end local p2    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_1

    .line 2251
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2252
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_2

    .line 2258
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2259
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_0

    .local v2, "handled":Z
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 2264
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2265
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_0

    .line 2270
    .local v2, "handled":Z
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2271
    const/16 v3, 0x42

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_0

    .line 2277
    .local v2, "handled":Z
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2278
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2279
    .local v2, "handled":Z
    if-nez v2, :cond_1

    .line 2280
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 2281
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2282
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 2288
    :sswitch_6
    iget-object v3, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2289
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2290
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    .line 2294
    .end local v2    # "handled":Z
    :cond_8
    :goto_3
    const/4 v2, 0x1

    .restart local v2    # "handled":Z
    goto/16 :goto_0

    .line 2290
    :cond_9
    const/4 v2, 0x1

    goto :goto_3

    .line 2291
    :cond_a
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2292
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_3

    .local v2, "handled":Z
    :cond_b
    const/4 v2, 0x1

    goto :goto_3

    .line 2299
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2300
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2301
    :cond_d
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2302
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2307
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2308
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2309
    :cond_10
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2310
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2315
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2316
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2321
    :sswitch_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2322
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2348
    .end local v2    # "handled":Z
    :cond_14
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2349
    return v7

    .line 2352
    :cond_15
    packed-switch v0, :pswitch_data_0

    .line 2363
    return v4

    .line 2354
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 2357
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 2360
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 2228
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3d -> :sswitch_0
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
        0x5c -> :sswitch_7
        0x5d -> :sswitch_8
        0x7a -> :sswitch_9
        0x7b -> :sswitch_a
    .end sparse-switch

    .line 2352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 1422
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1423
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1426
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1429
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1432
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mBottom:I

    iget v8, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1436
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 1437
    .local v0, "bottomOffset":I
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1438
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1442
    .local v3, "firstTop":I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1443
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1445
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1448
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1449
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1452
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1454
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1419
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 1471
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1474
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1477
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1480
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1483
    .local v6, "start":I
    iget v8, p0, Landroid/widget/ListView;->mBottom:I

    iget v9, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1487
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 1488
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1489
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1490
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1494
    .local v5, "lastPosition":I
    if-lez v7, :cond_2

    .line 1495
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1496
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1498
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1501
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1502
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1505
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1507
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1468
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_2
    :goto_0
    return-void

    .line 1509
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v6    # "start":I
    .restart local v7    # "topOffset":I
    :cond_3
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1510
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3095
    const/4 v0, 0x0

    .line 3096
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3097
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3098
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3099
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3100
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3104
    :cond_0
    :goto_0
    return v0

    .line 3101
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3102
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 825
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 826
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 827
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 828
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 829
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 824
    :goto_0
    return-void

    .line 831
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 832
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 833
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 707
    const/4 v8, 0x0

    .line 709
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int v7, v0, v1

    .line 710
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 714
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 716
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 717
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 719
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 720
    if-eqz v5, :cond_1

    .line 721
    move-object v8, v6

    .line 723
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 716
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "selected":Z
    goto :goto_1

    .line 726
    .end local v5    # "selected":Z
    :cond_3
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 727
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 793
    sub-int v6, p2, p1

    .line 795
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 798
    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    .line 797
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 799
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 801
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 802
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_0

    .line 803
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 806
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 808
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 809
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 814
    :goto_0
    return-object v7

    .line 811
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 849
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 850
    .local v8, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 854
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 856
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 859
    .local v7, "bottomSelectionPixel":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 863
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 866
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 870
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 871
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 874
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 890
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 892
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 893
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 898
    :goto_1
    return-object v10

    .line 875
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 878
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 882
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 883
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 886
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 895
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .prologue
    const/4 v2, 0x0

    .line 773
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 774
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 775
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 776
    iput v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 778
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 1374
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .line 1375
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1377
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1382
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1383
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1384
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1386
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1387
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1388
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1389
    .local v8, "childCount":I
    if-lez v8, :cond_0

    .line 1390
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1403
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1404
    return-object v10

    .line 1374
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v9    # "dividerHeight":I
    .end local v10    # "temp":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "tempIsSelected":Z
    goto :goto_0

    .line 1393
    .restart local v9    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1395
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1396
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1397
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1398
    .restart local v8    # "childCount":I
    if-lez v8, :cond_0

    .line 1399
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1405
    :cond_3
    if-eqz v6, :cond_4

    .line 1406
    return-object v6

    .line 1408
    :cond_4
    return-object v7
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 741
    const/4 v8, 0x0

    .line 743
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 744
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 745
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 748
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 750
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 751
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 752
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 753
    if-eqz v5, :cond_1

    .line 754
    move-object v8, v6

    .line 756
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 750
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "selected":Z
    goto :goto_1

    .line 759
    .end local v5    # "selected":Z
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 760
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 761
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2780
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 911
    move v0, p1

    .line 912
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 913
    sub-int/2addr v0, p2

    .line 915
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 928
    move v0, p1

    .line 929
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 930
    add-int/2addr v0, p2

    .line 932
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 9
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x0

    .line 2464
    const/16 v6, 0x11

    if-eq p1, v6, :cond_0

    const/16 v6, 0x42

    if-eq p1, v6, :cond_0

    .line 2465
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2469
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 2470
    .local v4, "numChildren":I
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_3

    if-lez v4, :cond_3

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 2471
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2472
    .local v5, "selectedView":Landroid/view/View;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2473
    instance-of v6, v5, Landroid/view/ViewGroup;

    .line 2472
    if-eqz v6, :cond_3

    .line 2475
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2476
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    .line 2477
    check-cast v5, Landroid/view/ViewGroup;

    .line 2476
    .end local v5    # "selectedView":Landroid/view/View;
    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2478
    .local v3, "nextFocus":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 2480
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 2481
    .local v1, "focusedRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 2482
    invoke-virtual {v0, v1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2483
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2484
    invoke-virtual {p0, v3, v1}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2488
    .end local v1    # "focusedRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v3, p1, v1}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2489
    const/4 v6, 0x1

    return v6

    .line 2486
    .restart local v1    # "focusedRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    .local v1, "focusedRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 2496
    .end local v1    # "focusedRect":Landroid/graphics/Rect;
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    .line 2497
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2496
    invoke-virtual {v7, v6, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2498
    .local v2, "globalNextFocus":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2499
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    return v6

    .line 2503
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "globalNextFocus":Landroid/view/View;
    .end local v3    # "nextFocus":Landroid/view/View;
    :cond_3
    return v8
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    const/4 v9, 0x0

    .line 2671
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2672
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2682
    :cond_0
    const/4 v5, 0x0

    .line 2683
    .local v5, "topSelected":Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v8, v10

    .line 2684
    .local v4, "selectedIndex":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2685
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_4

    .line 2686
    move v7, v2

    .line 2687
    .local v7, "topViewIndex":I
    move v1, v4

    .line 2688
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2689
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    .line 2690
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    .line 2698
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2701
    .local v3, "numChildren":I
    if-eqz v6, :cond_1

    .line 2702
    if-nez p4, :cond_5

    move v8, v5

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2703
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2707
    :cond_1
    if-eqz v0, :cond_3

    .line 2708
    if-nez p4, :cond_2

    if-eqz v5, :cond_6

    :cond_2
    :goto_2
    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    .line 2709
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2670
    :cond_3
    return-void

    .line 2692
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_4
    move v7, v4

    .line 2693
    .restart local v7    # "topViewIndex":I
    move v1, v2

    .line 2694
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    .line 2695
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .restart local v3    # "numChildren":I
    :cond_5
    move v8, v9

    .line 2702
    goto :goto_1

    .line 2708
    :cond_6
    const/4 v9, 0x1

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1870
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1871
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1872
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1873
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 1874
    return v6

    .line 1872
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1878
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1879
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1880
    .local v3, "numFooters":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 1881
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    .line 1882
    return v6

    .line 1880
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1886
    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 3047
    if-ne p1, p2, :cond_0

    .line 3048
    const/4 v1, 0x1

    return v1

    .line 3051
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3052
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v7, -0x1

    .line 2910
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2911
    .local v1, "firstPosition":I
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    .line 2912
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    .line 2913
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v6, 0x1

    .line 2915
    .local v5, "startPos":I
    :goto_0
    iget-object v6, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 2916
    return v7

    .line 2914
    .end local v5    # "startPos":I
    :cond_0
    move v5, v1

    .restart local v5    # "startPos":I
    goto :goto_0

    .line 2918
    :cond_1
    if-ge v5, v1, :cond_2

    .line 2919
    move v5, v1

    .line 2922
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2923
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2924
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_1
    if-gt v4, v3, :cond_a

    .line 2925
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2926
    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 2927
    return v4

    .line 2924
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2931
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v2, v6, -0x1

    .line 2932
    .local v2, "last":I
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_6

    .line 2933
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v6, -0x1

    .line 2935
    .restart local v5    # "startPos":I
    :goto_2
    if-ltz v5, :cond_5

    iget-object v6, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_7

    .line 2936
    :cond_5
    return v7

    .line 2934
    .end local v5    # "startPos":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v5, v6, -0x1

    .restart local v5    # "startPos":I
    goto :goto_2

    .line 2938
    :cond_7
    if-le v5, v2, :cond_8

    .line 2939
    move v5, v2

    .line 2942
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2943
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_3
    if-lt v4, v1, :cond_a

    .line 2944
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2945
    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    .line 2946
    return v4

    .line 2943
    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 2950
    .end local v2    # "last":I
    :cond_a
    return v7
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 1907
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1909
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1910
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1913
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 1915
    return-object v1

    .line 1920
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1923
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 1925
    return-object v1
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2721
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2722
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2723
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2725
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2728
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2729
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2730
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2729
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2720
    .end local v0    # "heightDelta":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 2741
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2742
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2743
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 2744
    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 2745
    const/4 v5, -0x2

    .line 2743
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2748
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 2749
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2748
    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2750
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2752
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 2753
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2758
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2740
    return-void

    .line 2755
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .prologue
    const/4 v6, 0x0

    .line 1212
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1213
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1214
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1215
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1217
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1218
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1221
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1220
    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1222
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1224
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1225
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1229
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1233
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1211
    return-void

    .line 1227
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {p4, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .prologue
    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 975
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 979
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 981
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 984
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    .line 1006
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 1006
    const/4 v5, 0x1

    .line 1007
    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 1006
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1009
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1012
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 1012
    const/4 v5, 0x1

    .line 1013
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    .line 1012
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1016
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1019
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1022
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1025
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1026
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1027
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1030
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1032
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1036
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1037
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1038
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1039
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1120
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v14

    .line 1041
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1042
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1043
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1045
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1066
    if-eqz p2, :cond_4

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    .line 1069
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    .line 1068
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1078
    .restart local v14    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1080
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1083
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1086
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1087
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1088
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1091
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1095
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1073
    .end local v14    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    .line 1074
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    .line 1073
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1098
    .end local v14    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1103
    .local v4, "oldTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1106
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1109
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1110
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1112
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1117
    .end local v12    # "newBottom":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v8, 0x82

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 2540
    if-ne p3, v8, :cond_3

    .line 2541
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 2542
    .local v1, "listBottom":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v5, v1, :cond_2

    .line 2543
    if-eq p2, v7, :cond_1

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v5, :cond_1

    .line 2544
    add-int/lit8 v3, p2, 0x1

    .line 2563
    .end local v1    # "listBottom":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_6

    .line 2564
    :cond_0
    return v7

    .line 2545
    .end local v3    # "nextSelected":I
    .restart local v1    # "listBottom":I
    :cond_1
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 2548
    .end local v3    # "nextSelected":I
    :cond_2
    invoke-direct {p0, p3}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    return v4

    .line 2551
    .end local v1    # "listBottom":I
    :cond_3
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 2552
    .local v2, "listTop":I
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v2, :cond_5

    .line 2553
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2554
    .local v0, "lastPos":I
    if-eq p2, v7, :cond_4

    if-gt p2, v0, :cond_4

    .line 2555
    add-int/lit8 v3, p2, -0x1

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 2556
    .end local v3    # "nextSelected":I
    :cond_4
    move v3, v0

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 2559
    .end local v0    # "lastPos":I
    .end local v3    # "nextSelected":I
    :cond_5
    invoke-direct {p0, p3}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    return v4

    .line 2566
    .end local v2    # "listTop":I
    .restart local v3    # "nextSelected":I
    :cond_6
    if-ne p3, v8, :cond_7

    const/4 v4, 0x1

    :cond_7
    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v4

    return v4
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 3032
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 3033
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3034
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3035
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3036
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3033
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3039
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2767
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2768
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2769
    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2770
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 2771
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2772
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 2773
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2766
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 353
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 354
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 355
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 356
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 351
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 353
    .restart local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3115
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3117
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3118
    .local v5, "listBottom":I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3119
    .local v6, "listTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3121
    .local v8, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 3125
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3126
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3127
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 3128
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3129
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3130
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3131
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3140
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3141
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3145
    :cond_1
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3146
    .local v0, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 3147
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3148
    .local v4, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3149
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3151
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3152
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3153
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_1

    .line 3157
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3160
    .restart local v0    # "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3161
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3162
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_2

    .line 3167
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 3168
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3171
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3172
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3175
    .restart local v1    # "last":Landroid/view/View;
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 3176
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3177
    .restart local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3178
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3180
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3181
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .line 3114
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 1944
    const-string/jumbo v19, "setupListItem"

    const-wide/16 v20, 0x8

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1946
    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v11

    .line 1947
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_9

    const/16 v17, 0x1

    .line 1948
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 1949
    .local v13, "mode":I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    .line 1950
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 1951
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 1952
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_d

    if-nez v17, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    .line 1956
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1957
    .local v15, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_0

    .line 1958
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1960
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1962
    if-eqz p7, :cond_1

    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    :cond_1
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 1963
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1964
    :cond_2
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1973
    :goto_6
    if-eqz v17, :cond_3

    .line 1974
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1977
    :cond_3
    if-eqz v16, :cond_4

    .line 1978
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1981
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1982
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    .line 1983
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1990
    :cond_5
    :goto_7
    if-eqz v14, :cond_14

    .line 1991
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    .line 1991
    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1993
    .local v8, "childWidthSpec":I
    iget v12, v15, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1995
    .local v12, "lpHeight":I
    if-lez v12, :cond_13

    .line 1996
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2001
    .local v5, "childHeightSpec":I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2006
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2007
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2008
    .local v9, "h":I
    if-eqz p4, :cond_15

    move/from16 v7, p3

    .line 2010
    .local v7, "childTop":I
    :goto_a
    if-eqz v14, :cond_16

    .line 2011
    add-int v6, p5, v18

    .line 2012
    .local v6, "childRight":I
    add-int v4, v7, v9

    .line 2013
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2019
    .end local v4    # "childBottom":I
    .end local v6    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 2023
    :cond_6
    :goto_c
    if-eqz p7, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 2025
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2028
    :cond_7
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1943
    return-void

    .line 1946
    .end local v7    # "childTop":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v13    # "mode":I
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_8
    const/4 v11, 0x0

    .local v11, "isSelected":Z
    goto/16 :goto_0

    .line 1947
    .end local v11    # "isSelected":Z
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "updateChildSelected":Z
    goto/16 :goto_1

    .line 1950
    .restart local v13    # "mode":I
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    .line 1949
    .end local v10    # "isPressed":Z
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    .line 1951
    :cond_c
    const/16 v16, 0x0

    .restart local v16    # "updateChildPressed":Z
    goto/16 :goto_3

    .line 1952
    :cond_d
    const/4 v14, 0x1

    .local v14, "needToMeasure":Z
    goto/16 :goto_4

    .line 1964
    .end local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1966
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1967
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1968
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1970
    :cond_10
    if-eqz p4, :cond_11

    const/16 v19, -0x1

    :goto_d
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v19, 0x0

    goto :goto_d

    .line 1984
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    .line 1985
    const/16 v20, 0xb

    .line 1984
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 1998
    .restart local v8    # "childWidthSpec":I
    .restart local v12    # "lpHeight":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v19

    .line 1999
    const/16 v20, 0x0

    .line 1998
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childHeightSpec":I
    goto/16 :goto_8

    .line 2003
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2008
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_15
    sub-int v7, p3, v9

    .restart local v7    # "childTop":I
    goto/16 :goto_a

    .line 2015
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2016
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b

    .line 2020
    :cond_17
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_c
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .locals 23
    .param p1, "itemIndex"    # I

    .prologue
    .line 3888
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3889
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 3890
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 3891
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_2

    const/4 v6, 0x1

    .line 3892
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v18, :cond_3

    const/4 v5, 0x1

    .line 3893
    .local v5, "drawOverscrollFooter":Z
    :goto_1
    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v4, 0x1

    .line 3895
    .local v4, "drawDividers":Z
    :goto_2
    if-eqz v4, :cond_1

    .line 3896
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_5

    :cond_0
    const/4 v7, 0x0

    .line 3897
    .local v7, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v16, v0

    .line 3898
    .local v16, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3899
    .local v10, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v9, v16, v22

    .line 3900
    .local v9, "footerLimit":I
    move/from16 v0, p1

    if-ge v0, v10, :cond_6

    const/4 v14, 0x1

    .line 3901
    .local v14, "isHeader":Z
    :goto_4
    move/from16 v0, p1

    if-lt v0, v9, :cond_7

    const/4 v13, 0x1

    .line 3902
    .local v13, "isFooter":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3903
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3904
    .local v8, "footerDividers":Z
    if-nez v11, :cond_8

    if-eqz v14, :cond_8

    .line 3943
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v16    # "itemCount":I
    :cond_1
    const/16 v22, 0x0

    return v22

    .line 3891
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "drawOverscrollHeader":Z
    goto :goto_0

    .line 3892
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "drawOverscrollFooter":Z
    goto :goto_1

    .line 3893
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "drawDividers":Z
    goto :goto_2

    .line 3896
    :cond_5
    const/4 v7, 0x1

    .restart local v7    # "fillForMissingDividers":Z
    goto :goto_3

    .line 3900
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "isHeader":Z
    goto :goto_4

    .line 3901
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "isFooter":Z
    goto :goto_5

    .line 3904
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    :cond_8
    if-nez v8, :cond_9

    if-nez v13, :cond_1

    .line 3905
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3906
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 3907
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    .line 3908
    .local v15, "isLastItem":Z
    :goto_6
    if-eqz v5, :cond_a

    if-nez v15, :cond_1

    .line 3909
    :cond_a
    add-int/lit8 v17, p1, 0x1

    .line 3913
    .local v17, "nextIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_e

    if-nez v11, :cond_b

    if-nez v14, :cond_e

    .line 3914
    move/from16 v0, v17

    if-lt v0, v10, :cond_e

    :cond_b
    if-nez v15, :cond_c

    .line 3915
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_e

    if-nez v8, :cond_c

    if-nez v13, :cond_e

    .line 3916
    move/from16 v0, v17

    if-ge v0, v9, :cond_e

    .line 3917
    :cond_c
    const/16 v22, 0x1

    return v22

    .line 3907
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_d
    const/4 v15, 0x0

    .restart local v15    # "isLastItem":Z
    goto :goto_6

    .line 3918
    .restart local v17    # "nextIndex":I
    :cond_e
    if-eqz v7, :cond_1

    .line 3919
    const/16 v22, 0x1

    return v22

    .line 3923
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_f
    if-eqz v6, :cond_12

    const/16 v21, 0x1

    .line 3924
    .local v21, "start":I
    :goto_7
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    const/4 v12, 0x1

    .line 3925
    .local v12, "isFirstItem":Z
    :goto_8
    if-nez v12, :cond_1

    .line 3926
    add-int/lit8 v20, p1, -0x1

    .line 3930
    .local v20, "previousIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_14

    if-nez v11, :cond_10

    if-nez v14, :cond_14

    .line 3931
    move/from16 v0, v20

    if-lt v0, v10, :cond_14

    :cond_10
    if-nez v12, :cond_11

    .line 3932
    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_14

    if-nez v8, :cond_11

    if-nez v13, :cond_14

    .line 3933
    move/from16 v0, v20

    if-ge v0, v9, :cond_14

    .line 3934
    :cond_11
    const/16 v22, 0x1

    return v22

    .line 3923
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_12
    const/16 v21, 0x0

    .restart local v21    # "start":I
    goto :goto_7

    .line 3924
    :cond_13
    const/4 v12, 0x0

    .restart local v12    # "isFirstItem":Z
    goto :goto_8

    .line 3935
    .restart local v20    # "previousIndex":I
    :cond_14
    if-eqz v7, :cond_1

    .line 3936
    const/16 v22, 0x1

    return v22
.end method

.method private showingBottomFadingEdge()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 578
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 579
    .local v1, "childCount":I
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 580
    .local v0, "bottomOfBottomChild":I
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v2, v5, -0x1

    .line 582
    .local v2, "lastVisiblePosition":I
    iget v5, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v5, v6

    .line 584
    .local v3, "listBottom":I
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_0

    .line 585
    if-ge v0, v3, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v4

    .line 585
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 570
    iget v3, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v0, v3, v4

    .line 571
    .local v0, "listTop":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v3, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 415
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 414
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 379
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 380
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 381
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 382
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 383
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 387
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 389
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 394
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 378
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 321
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 320
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 285
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 286
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 287
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 288
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 289
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 293
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 295
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 300
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 284
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    .line 3581
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    .line 3558
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 2515
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2516
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2517
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2518
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2522
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2520
    return v0

    .line 2521
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    .line 2522
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2521
    throw v1
.end method

.method protected canAnimate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2033
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public clearScrapViewsIfNeeded()V
    .locals 3

    .prologue
    .line 4020
    sget-boolean v0, Landroid/widget/ListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    .line 4021
    const-string/jumbo v0, "ListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearScrapViewsIfNeeded: mRecycler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4022
    const-string/jumbo v2, ",mAbandonActiveViews = "

    .line 4021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4023
    iget-boolean v2, p0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    .line 4021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4023
    const-string/jumbo v2, ",this = "

    .line 4021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 4026
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    .line 4028
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 4019
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    .line 3296
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mCachingActive:Z

    .line 3300
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3301
    .local v10, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3302
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 3303
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_7

    const/4 v13, 0x1

    .line 3304
    .local v13, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v32, :cond_8

    const/4 v12, 0x1

    .line 3305
    .local v12, "drawOverscrollFooter":Z
    :goto_1
    if-lez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_9

    const/4 v11, 0x1

    .line 3307
    .local v11, "drawDividers":Z
    :goto_2
    if-nez v11, :cond_1

    if-nez v13, :cond_1

    if-eqz v12, :cond_16

    .line 3309
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3310
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3311
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3313
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    .line 3314
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3315
    .local v20, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v27, v0

    .line 3316
    .local v27, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v19, v27, v39

    .line 3317
    .local v19, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v21, v0

    .line 3318
    .local v21, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v18, v0

    .line 3319
    .local v18, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 3320
    .local v17, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3321
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3326
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_2

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_a

    :cond_2
    const/16 v16, 0x0

    .line 3328
    .local v16, "fillForMissingDividers":Z
    :goto_3
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_3

    .line 3329
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 3332
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    .line 3334
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3335
    .local v15, "effectivePaddingTop":I
    const/4 v14, 0x0

    .line 3336
    .local v14, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mGroupFlags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x22

    const/16 v40, 0x22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_4

    .line 3337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3341
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v40, v0

    add-int v29, v39, v40

    .line 3342
    .local v29, "listBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_17

    .line 3343
    const/4 v6, 0x0

    .line 3346
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v36, v0

    .line 3347
    .local v36, "scrollY":I
    if-lez v9, :cond_5

    if-gez v36, :cond_5

    .line 3348
    if-eqz v13, :cond_b

    .line 3349
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3350
    move/from16 v0, v36

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3359
    :cond_5
    :goto_4
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_15

    .line 3360
    add-int v28, v17, v22

    .line 3361
    .local v28, "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    const/16 v25, 0x1

    .line 3362
    .local v25, "isHeader":Z
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    const/16 v24, 0x1

    .line 3363
    .local v24, "isFooter":Z
    :goto_7
    if-nez v21, :cond_e

    if-eqz v25, :cond_e

    .line 3359
    :cond_6
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 3303
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v11    # "drawDividers":Z
    .end local v12    # "drawOverscrollFooter":Z
    .end local v13    # "drawOverscrollHeader":Z
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v27    # "itemCount":I
    .end local v28    # "itemIndex":I
    .end local v29    # "listBottom":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "scrollY":I
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "drawOverscrollHeader":Z
    goto/16 :goto_0

    .line 3304
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "drawOverscrollFooter":Z
    goto/16 :goto_1

    .line 3305
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "drawDividers":Z
    goto/16 :goto_2

    .line 3326
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    :cond_a
    const/16 v16, 0x1

    .restart local v16    # "fillForMissingDividers":Z
    goto/16 :goto_3

    .line 3352
    .restart local v6    # "bottom":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v29    # "listBottom":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "scrollY":I
    :cond_b
    if-eqz v11, :cond_5

    .line 3353
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3354
    neg-int v0, v10

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3355
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_4

    .line 3361
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    :cond_c
    const/16 v25, 0x0

    .restart local v25    # "isHeader":Z
    goto :goto_6

    .line 3362
    :cond_d
    const/16 v24, 0x0

    .restart local v24    # "isFooter":Z
    goto :goto_7

    .line 3363
    :cond_e
    if-nez v18, :cond_f

    if-nez v24, :cond_6

    .line 3364
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3365
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3366
    add-int/lit8 v39, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    const/16 v26, 0x1

    .line 3368
    .local v26, "isLastItem":Z
    :goto_9
    if-eqz v11, :cond_6

    move/from16 v0, v29

    if-ge v6, v0, :cond_6

    .line 3369
    if-eqz v12, :cond_10

    if-nez v26, :cond_6

    .line 3370
    :cond_10
    add-int/lit8 v30, v28, 0x1

    .line 3374
    .local v30, "nextIndex":I
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_14

    if-nez v21, :cond_11

    if-nez v25, :cond_14

    .line 3375
    move/from16 v0, v30

    move/from16 v1, v20

    if-lt v0, v1, :cond_14

    :cond_11
    if-nez v26, :cond_12

    .line 3376
    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_14

    if-nez v18, :cond_12

    if-nez v24, :cond_14

    .line 3377
    move/from16 v0, v30

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 3378
    :cond_12
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3379
    add-int v39, v6, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3380
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_8

    .line 3366
    .end local v26    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_13
    const/16 v26, 0x0

    .restart local v26    # "isLastItem":Z
    goto :goto_9

    .line 3381
    .restart local v30    # "nextIndex":I
    :cond_14
    if-eqz v16, :cond_6

    .line 3382
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3383
    add-int v39, v6, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3384
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 3390
    .end local v8    # "child":Landroid/view/View;
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v26    # "isLastItem":Z
    .end local v28    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v40, v0

    add-int v31, v39, v40

    .line 3391
    .local v31, "overFooterBottom":I
    if-eqz v12, :cond_16

    add-int v39, v17, v9

    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 3392
    move/from16 v0, v31

    if-le v0, v6, :cond_16

    .line 3393
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3394
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3395
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3458
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v27    # "itemCount":I
    .end local v29    # "listBottom":I
    .end local v31    # "overFooterBottom":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "scrollY":I
    :cond_16
    :goto_a
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3294
    return-void

    .line 3400
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    .restart local v29    # "listBottom":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v36, v0

    .line 3402
    .restart local v36    # "scrollY":I
    if-lez v9, :cond_18

    if-eqz v13, :cond_18

    .line 3403
    move/from16 v0, v36

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3404
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v39

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3405
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3408
    :cond_18
    if-eqz v13, :cond_1a

    const/16 v37, 0x1

    .line 3409
    .local v37, "start":I
    :goto_b
    move/from16 v22, v37

    .restart local v22    # "i":I
    :goto_c
    move/from16 v0, v22

    if-ge v0, v9, :cond_23

    .line 3410
    add-int v28, v17, v22

    .line 3411
    .restart local v28    # "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    const/16 v25, 0x1

    .line 3412
    .restart local v25    # "isHeader":Z
    :goto_d
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_1c

    const/16 v24, 0x1

    .line 3413
    .restart local v24    # "isFooter":Z
    :goto_e
    if-nez v21, :cond_1d

    if-eqz v25, :cond_1d

    .line 3409
    :cond_19
    :goto_f
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 3408
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v37    # "start":I
    :cond_1a
    const/16 v37, 0x0

    .restart local v37    # "start":I
    goto :goto_b

    .line 3411
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    :cond_1b
    const/16 v25, 0x0

    .restart local v25    # "isHeader":Z
    goto :goto_d

    .line 3412
    :cond_1c
    const/16 v24, 0x0

    .restart local v24    # "isFooter":Z
    goto :goto_e

    .line 3413
    :cond_1d
    if-nez v18, :cond_1e

    if-nez v24, :cond_19

    .line 3414
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3415
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v38

    .line 3416
    .local v38, "top":I
    if-eqz v11, :cond_19

    move/from16 v0, v38

    if-le v0, v15, :cond_19

    .line 3417
    move/from16 v0, v22

    move/from16 v1, v37

    if-ne v0, v1, :cond_21

    const/16 v23, 0x1

    .line 3418
    .local v23, "isFirstItem":Z
    :goto_10
    add-int/lit8 v35, v28, -0x1

    .line 3422
    .local v35, "previousIndex":I
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_22

    if-nez v21, :cond_1f

    if-nez v25, :cond_22

    .line 3423
    move/from16 v0, v35

    move/from16 v1, v20

    if-lt v0, v1, :cond_22

    :cond_1f
    if-nez v23, :cond_20

    .line 3424
    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_22

    if-nez v18, :cond_20

    if-nez v24, :cond_22

    .line 3425
    move/from16 v0, v35

    move/from16 v1, v19

    if-ge v0, v1, :cond_22

    .line 3426
    :cond_20
    sub-int v39, v38, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3427
    move/from16 v0, v38

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3432
    add-int/lit8 v39, v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_f

    .line 3417
    .end local v23    # "isFirstItem":Z
    .end local v35    # "previousIndex":I
    :cond_21
    const/16 v23, 0x0

    .restart local v23    # "isFirstItem":Z
    goto :goto_10

    .line 3433
    .restart local v35    # "previousIndex":I
    :cond_22
    if-eqz v16, :cond_19

    .line 3434
    sub-int v39, v38, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3435
    move/from16 v0, v38

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3436
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_f

    .line 3442
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "isFirstItem":Z
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v35    # "previousIndex":I
    .end local v38    # "top":I
    :cond_23
    if-lez v9, :cond_16

    if-lez v36, :cond_16

    .line 3443
    if-eqz v12, :cond_24

    .line 3444
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ListView;->mBottom:I

    .line 3445
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3446
    add-int v39, v3, v36

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3447
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 3448
    .end local v3    # "absListBottom":I
    :cond_24
    if-eqz v11, :cond_16

    .line 3449
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3450
    add-int v39, v29, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3451
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2187
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2188
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2190
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2191
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2194
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2197
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3463
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3464
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3465
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3467
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3481
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3483
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3484
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3479
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3277
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3279
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3280
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3282
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3283
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3284
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3287
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3288
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3276
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3260
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3262
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3263
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3265
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3266
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3267
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3270
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3271
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3259
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 4006
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4008
    const-string/jumbo v0, "recycleOnMeasure"

    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4005
    return-void
.end method

.method fillGap(Z)V
    .locals 7
    .param p1, "down"    # Z

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 673
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 674
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 675
    const/4 v2, 0x0

    .line 676
    .local v2, "paddingTop":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_0

    .line 677
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 679
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 681
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 682
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 672
    .end local v2    # "paddingTop":I
    :goto_1
    return-void

    .line 680
    .end local v3    # "startOffset":I
    .restart local v2    # "paddingTop":I
    :cond_1
    move v3, v2

    .restart local v3    # "startOffset":I
    goto :goto_0

    .line 684
    .end local v2    # "paddingTop":I
    .end local v3    # "startOffset":I
    :cond_2
    const/4 v1, 0x0

    .line 685
    .local v1, "paddingBottom":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_3

    .line 686
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v1

    .line 688
    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 690
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 691
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 689
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    .restart local v3    # "startOffset":I
    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 1341
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1342
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 1343
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1344
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1345
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1346
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1347
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1351
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1352
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1353
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1354
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1351
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1359
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    return v3
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 3814
    if-eqz p1, :cond_2

    .line 3815
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3818
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3819
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3821
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3818
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3822
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3824
    if-eqz v2, :cond_0

    .line 3825
    return-object v2

    .line 3830
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v4
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3792
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3793
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3794
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3795
    if-eqz v0, :cond_0

    .line 3796
    return-object v0

    .line 3799
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3800
    if-eqz v0, :cond_1

    .line 3801
    return-object v0

    .line 3804
    :cond_1
    return-object v0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 5
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    const/4 v4, 0x0

    .line 3719
    if-eqz p1, :cond_1

    .line 3720
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3723
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3724
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3726
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3727
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3729
    if-eqz v2, :cond_0

    .line 3730
    return-object v2

    .line 3723
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3735
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 3700
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3701
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3702
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3703
    if-eqz v0, :cond_0

    .line 3704
    return-object v0

    .line 3706
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3707
    if-eqz v0, :cond_1

    .line 3708
    return-object v0

    .line 3711
    :cond_1
    return-object v0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    const/4 v4, 0x0

    .line 3765
    if-eqz p1, :cond_1

    .line 3766
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3769
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3770
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3772
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3773
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3775
    if-eqz v2, :cond_0

    .line 3776
    return-object v2

    .line 3769
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3781
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3745
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3746
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3747
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3748
    if-eqz v0, :cond_0

    .line 3749
    return-object v0

    .line 3752
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3753
    if-eqz v0, :cond_1

    .line 3754
    return-object v0

    .line 3757
    :cond_1
    return-object v0
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2423
    const/4 v1, 0x0

    .line 2424
    .local v1, "moved":Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_3

    .line 2425
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    .line 2426
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2427
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2428
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setListLayoutMode(I)Z

    .line 2429
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2430
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2432
    :cond_0
    const/4 v1, 0x1

    .line 2448
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2453
    :cond_2
    :goto_1
    return v1

    .line 2434
    :cond_3
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 2435
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2436
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    .line 2438
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2437
    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2439
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    .line 2440
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setListLayoutMode(I)Z

    .line 2441
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2442
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2444
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 2449
    .end local v0    # "lastItem":I
    .end local v2    # "position":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2450
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3948
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3845
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3846
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v8

    return-object v8

    .line 3851
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3852
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3853
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3854
    .local v3, "count":I
    new-array v5, v3, [J

    .line 3855
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3857
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3858
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 3859
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3860
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3858
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_0

    .line 3866
    :cond_1
    if-ne v2, v3, :cond_2

    .line 3867
    return-object v5

    .line 3869
    :cond_2
    new-array v6, v2, [J

    .line 3870
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 3872
    return-object v6

    .line 3875
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v8, v10, [J

    return-object v8

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_1
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3495
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3523
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3880
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 3881
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3882
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 3884
    :cond_0
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3222
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3620
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3601
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3227
    iget-boolean v5, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    .line 3228
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v5

    .line 3227
    if-nez v5, :cond_2

    .line 3228
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v4

    .line 3229
    :goto_0
    if-eqz v4, :cond_7

    .line 3231
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3232
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3233
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_4

    .line 3234
    :cond_1
    return v7

    .line 3227
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    :cond_2
    const/4 v4, 0x1

    .local v4, "retValue":Z
    goto :goto_0

    .line 3231
    .end local v4    # "retValue":Z
    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    .restart local v3    # "listTop":I
    goto :goto_1

    .line 3236
    .restart local v0    # "first":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    .line 3237
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 3236
    :goto_2
    sub-int v2, v6, v5

    .line 3238
    .local v2, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3239
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_7

    .line 3240
    :cond_5
    return v7

    .line 3237
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_6
    iget v5, p0, Landroid/widget/ListView;->mPaddingBottom:I

    goto :goto_2

    .line 3243
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    :cond_7
    return v4
.end method

.method protected layoutChildren()V
    .locals 40

    .prologue
    .line 1518
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1519
    .local v13, "blockLayoutRequests":Z
    if-eqz v13, :cond_0

    .line 1520
    return-void

    .line 1523
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1526
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1530
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1531
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1532
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1859
    if-nez v13, :cond_1

    .line 1860
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1533
    :cond_1
    return-void

    .line 1536
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1537
    .local v8, "childrenTop":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v37, v0

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    sub-int v9, v4, v37

    .line 1538
    .local v9, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    .line 1540
    .local v15, "childCount":I
    const/16 v27, 0x0

    .line 1541
    .local v27, "index":I
    const/4 v7, 0x0

    .line 1544
    .local v7, "delta":I
    const/4 v5, 0x0

    .line 1545
    .local v5, "oldSel":Landroid/view/View;
    const/16 v29, 0x0

    .line 1546
    .local v29, "oldFirst":Landroid/view/View;
    const/4 v6, 0x0

    .line 1549
    .local v6, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 1564
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v37, v0

    sub-int v27, v4, v37

    .line 1565
    if-ltz v27, :cond_3

    move/from16 v0, v27

    if-ge v0, v15, :cond_3

    .line 1566
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1570
    .end local v5    # "oldSel":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 1572
    .local v29, "oldFirst":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v4, :cond_4

    .line 1573
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v37, v0

    sub-int v7, v4, v37

    .line 1577
    :cond_4
    add-int v4, v27, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1581
    .end local v6    # "newSel":Landroid/view/View;
    .end local v29    # "oldFirst":Landroid/view/View;
    :cond_5
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mDataChanged:Z

    move/from16 v16, v0

    .line 1582
    .local v16, "dataChanged":Z
    if-eqz v16, :cond_6

    .line 1583
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1588
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    if-nez v4, :cond_8

    .line 1589
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1590
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1859
    if-nez v13, :cond_7

    .line 1860
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1591
    :cond_7
    return-void

    .line 1551
    .end local v16    # "dataChanged":Z
    .restart local v5    # "oldSel":Landroid/view/View;
    .restart local v6    # "newSel":Landroid/view/View;
    .local v29, "oldFirst":Landroid/view/View;
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v37, v0

    sub-int v27, v4, v37

    .line 1552
    if-ltz v27, :cond_5

    move/from16 v0, v27

    if-ge v0, v15, :cond_5

    .line 1553
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "newSel":Landroid/view/View;
    goto :goto_0

    .line 1592
    .end local v5    # "oldSel":Landroid/view/View;
    .end local v6    # "newSel":Landroid/view/View;
    .end local v29    # "oldFirst":Landroid/view/View;
    .restart local v16    # "dataChanged":Z
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Landroid/widget/ListAdapter;->getCount()I

    move-result v37

    move/from16 v0, v37

    if-eq v4, v0, :cond_a

    .line 1593
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 1597
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v38

    .line 1593
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 1597
    const-string/jumbo v38, ", "

    .line 1593
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 1597
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getClass()Ljava/lang/Class;

    move-result-object v38

    .line 1593
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 1598
    const-string/jumbo v38, ") with Adapter("

    .line 1593
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    .line 1593
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 1598
    const-string/jumbo v38, ")]"

    .line 1593
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1858
    .end local v7    # "delta":I
    .end local v8    # "childrenTop":I
    .end local v9    # "childrenBottom":I
    .end local v15    # "childCount":I
    .end local v16    # "dataChanged":Z
    .end local v27    # "index":I
    :catchall_0
    move-exception v4

    .line 1859
    if-nez v13, :cond_9

    .line 1860
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1858
    :cond_9
    throw v4

    .line 1601
    .restart local v7    # "delta":I
    .restart local v8    # "childrenTop":I
    .restart local v9    # "childrenBottom":I
    .restart local v15    # "childCount":I
    .restart local v16    # "dataChanged":Z
    .restart local v27    # "index":I
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1603
    const/4 v10, 0x0

    .line 1604
    .local v10, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    .line 1605
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v12, -0x1

    .line 1610
    .local v12, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v35

    .line 1611
    .local v35, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v35, :cond_d

    .line 1612
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v19

    .line 1613
    .local v19, "focusHost":Landroid/view/View;
    if-eqz v19, :cond_d

    .line 1614
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 1615
    .local v18, "focusChild":Landroid/view/View;
    if-eqz v18, :cond_d

    .line 1616
    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1617
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    .line 1616
    if-nez v4, :cond_b

    .line 1617
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    .line 1616
    if-eqz v4, :cond_c

    .line 1620
    :cond_b
    move-object/from16 v11, v19

    .line 1621
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 1627
    .end local v10    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    .line 1632
    .end local v18    # "focusChild":Landroid/view/View;
    .end local v19    # "focusHost":Landroid/view/View;
    :cond_d
    const/16 v20, 0x0

    .line 1633
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v21, 0x0

    .line 1638
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v24

    .line 1639
    .local v24, "focusedChild":Landroid/view/View;
    if-eqz v24, :cond_10

    .line 1645
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1646
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    .line 1645
    if-nez v4, :cond_e

    .line 1646
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    .line 1645
    if-eqz v4, :cond_f

    .line 1647
    :cond_e
    move-object/from16 v20, v24

    .line 1649
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v21

    .line 1650
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    if-eqz v21, :cond_f

    .line 1652
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1655
    .end local v20    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v21    # "focusLayoutRestoreView":Landroid/view/View;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1660
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 1661
    .local v17, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v32, v0

    .line 1666
    .local v32, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    if-nez v4, :cond_1c

    .line 1667
    if-eqz v16, :cond_11

    .line 1668
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    if-ge v0, v15, :cond_12

    .line 1669
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v37, v17, v25

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1668
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1672
    .end local v25    # "i":I
    :cond_11
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1681
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1682
    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1684
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_1

    .line 1711
    if-nez v15, :cond_1f

    .line 1712
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v4, :cond_1e

    .line 1713
    const/4 v4, 0x0

    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v30

    .line 1714
    .local v30, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1715
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v34

    .line 1735
    .end local v8    # "childrenTop":I
    .end local v30    # "position":I
    .local v34, "sel":Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    if-eqz v4, :cond_24

    .line 1736
    sget-boolean v4, Landroid/widget/ListView;->IS_ENG_BUILD:Z

    if-eqz v4, :cond_13

    .line 1737
    const-string/jumbo v4, "ListView"

    const-string/jumbo v37, "Abandon active views because it cann\'t be reused!"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mAbandonActiveViews:Z

    .line 1745
    :goto_3
    if-eqz v34, :cond_2a

    .line 1748
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1770
    :cond_14
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1772
    :cond_15
    :goto_4
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1807
    :cond_16
    :goto_5
    if-eqz v35, :cond_17

    .line 1808
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v28

    .line 1809
    .local v28, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v28, :cond_17

    .line 1810
    if-eqz v11, :cond_31

    .line 1811
    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    .line 1810
    if-eqz v4, :cond_31

    .line 1813
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v31

    .line 1814
    .local v31, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_30

    if-eqz v31, :cond_30

    .line 1816
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v38

    .line 1815
    invoke-static/range {v38 .. v39}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v36

    .line 1818
    .local v36, "virtualViewId":I
    const/16 v4, 0x40

    const/16 v37, 0x0

    .line 1817
    move-object/from16 v0, v31

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1837
    .end local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v36    # "virtualViewId":I
    :cond_17
    :goto_6
    if-eqz v21, :cond_18

    .line 1838
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1839
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1842
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setListLayoutMode(I)Z

    .line 1843
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDataChanged(Z)Z

    .line 1844
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v4, :cond_19

    .line 1845
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1846
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1848
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mNeedSync:Z

    .line 1849
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1851
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1853
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    if-lez v4, :cond_1a

    .line 1854
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1857
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1859
    if-nez v13, :cond_1b

    .line 1860
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1517
    :cond_1b
    return-void

    .line 1675
    .end local v34    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_1c
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_7
    move/from16 v0, v25

    if-ge v0, v15, :cond_12

    .line 1676
    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 1675
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 1686
    .end local v25    # "i":I
    :pswitch_2
    if-eqz v6, :cond_1d

    .line 1687
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 1689
    .end local v34    # "sel":Landroid/view/View;
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 1693
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 1696
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v34

    .line 1697
    .restart local v34    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_2

    .line 1700
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1701
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v34

    .line 1702
    .restart local v34    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_2

    .line 1705
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .end local v34    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 1708
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 1717
    .end local v34    # "sel":Landroid/view/View;
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v30

    .line 1718
    .restart local v30    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1719
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 1722
    .end local v30    # "position":I
    .end local v34    # "sel":Landroid/view/View;
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v4, :cond_21

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v4, v0, :cond_21

    .line 1723
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1724
    if-nez v5, :cond_20

    .line 1723
    .end local v8    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 1724
    .end local v34    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_20
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_8

    .line 1725
    :cond_21
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v4, v0, :cond_23

    .line 1726
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1727
    if-nez v29, :cond_22

    .line 1726
    .end local v8    # "childrenTop":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 1727
    .end local v34    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_22
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_9

    .line 1729
    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 1742
    .end local v8    # "childrenTop":I
    :cond_24
    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    goto/16 :goto_3

    .line 1749
    :cond_25
    move-object/from16 v0, v34

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_26

    .line 1750
    if-eqz v21, :cond_26

    .line 1751
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    move-result v4

    .line 1749
    if-nez v4, :cond_28

    .line 1751
    :cond_26
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestFocus()Z

    move-result v22

    .line 1752
    :goto_a
    if-nez v22, :cond_29

    .line 1756
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v23

    .line 1757
    .local v23, "focused":Landroid/view/View;
    if-eqz v23, :cond_27

    .line 1758
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->clearFocus()V

    .line 1760
    :cond_27
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_4

    .line 1749
    .end local v23    # "focused":Landroid/view/View;
    :cond_28
    const/16 v22, 0x1

    .local v22, "focusWasTaken":Z
    goto :goto_a

    .line 1762
    .end local v22    # "focusWasTaken":Z
    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1764
    sget-boolean v4, Landroid/widget/ListView;->IS_ENG_BUILD:Z

    if-eqz v4, :cond_15

    .line 1765
    const-string/jumbo v4, "ListView"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "mSelectorRect.setEmpty in layoutChildren with sel = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 1766
    const-string/jumbo v38, ", this = "

    .line 1765
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1774
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v37, 0x1

    move/from16 v0, v37

    if-eq v4, v0, :cond_2c

    .line 1775
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v37, 0x2

    move/from16 v0, v37

    if-ne v4, v0, :cond_2d

    const/16 v26, 0x1

    .line 1776
    .local v26, "inTouchMode":Z
    :goto_b
    if-eqz v26, :cond_2e

    .line 1778
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v37, v0

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1779
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_2b

    .line 1780
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1801
    .end local v14    # "child":Landroid/view/View;
    :cond_2b
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v21, :cond_16

    .line 1802
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_5

    .line 1774
    .end local v26    # "inTouchMode":Z
    :cond_2c
    const/16 v26, 0x1

    .restart local v26    # "inTouchMode":Z
    goto :goto_b

    .line 1775
    .end local v26    # "inTouchMode":Z
    :cond_2d
    const/16 v26, 0x0

    .restart local v26    # "inTouchMode":Z
    goto :goto_b

    .line 1782
    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v4, v0, :cond_2f

    .line 1786
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v37, v0

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1787
    .restart local v14    # "child":Landroid/view/View;
    if-eqz v14, :cond_2b

    .line 1788
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_c

    .line 1792
    .end local v14    # "child":Landroid/view/View;
    :cond_2f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1793
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1794
    sget-boolean v4, Landroid/widget/ListView;->IS_ENG_BUILD:Z

    if-eqz v4, :cond_2b

    .line 1795
    const-string/jumbo v4, "ListView"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "mSelectorRect.setEmpty in layoutChildren this="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1820
    .end local v26    # "inTouchMode":Z
    .restart local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_30
    invoke-virtual {v11}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_6

    .line 1822
    .end local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_31
    const/4 v4, -0x1

    if-eq v12, v4, :cond_17

    .line 1825
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v12, v4

    .line 1826
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    .line 1825
    const/16 v38, 0x0

    .line 1824
    move/from16 v0, v38

    move/from16 v1, v37

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v30

    .line 1827
    .restart local v30    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 1828
    .local v33, "restoreView":Landroid/view/View;
    if-eqz v33, :cond_17

    .line 1829
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 1549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1684
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2089
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2090
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2091
    :cond_0
    return v4

    .line 2094
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2095
    .local v1, "count":I
    iget-boolean v2, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_2

    .line 2096
    if-eqz p2, :cond_5

    .line 2097
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2098
    :goto_0
    if-ge p1, v1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2109
    :cond_2
    if-ltz p1, :cond_3

    if-lt p1, v1, :cond_6

    .line 2110
    :cond_3
    return v4

    .line 2099
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2102
    :cond_5
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2103
    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2104
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 2113
    :cond_6
    return p1
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2129
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2130
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2131
    :cond_0
    return v5

    .line 2135
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2136
    .local v1, "after":I
    if-eq v1, v5, :cond_2

    .line 2137
    return v1

    .line 2141
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2142
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v5, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2143
    if-eqz p3, :cond_5

    .line 2144
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2145
    :goto_0
    if-le p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2148
    :cond_3
    if-gt p2, p1, :cond_8

    .line 2149
    return v5

    .line 2146
    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2152
    :cond_5
    add-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2153
    :goto_1
    if-ge p2, p1, :cond_6

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2156
    :cond_6
    if-lt p2, p1, :cond_8

    .line 2157
    return v5

    .line 2154
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2161
    :cond_8
    return p2
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1274
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1275
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 1276
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    return v10

    .line 1280
    :cond_0
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1281
    .local v9, "returnedHeight":I
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v10, :cond_5

    iget-object v10, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_5

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1284
    .local v3, "dividerHeight":I
    :goto_0
    const/4 v6, 0x0

    .line 1289
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1290
    :cond_1
    iget-object v7, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1291
    .local v7, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1292
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1294
    .local v5, "isScrap":[Z
    sget-boolean v10, Landroid/widget/ListView;->IS_ENG_BUILD:Z

    if-eqz v10, :cond_2

    .line 1295
    const-string/jumbo v10, "ListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "measureHeightOfChildren adapter = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1296
    const-string/jumbo v12, ", startPosition = "

    .line 1295
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1296
    const-string/jumbo v12, ", endPosition = "

    .line 1295
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1297
    const-string/jumbo v12, ", maxHeight = "

    .line 1295
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1297
    const-string/jumbo v12, ", this = "

    .line 1295
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_2
    move v4, p2

    .local v4, "i":I
    :goto_1
    move/from16 v0, p3

    if-gt v4, v0, :cond_9

    .line 1301
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1303
    .local v2, "child":Landroid/view/View;
    move/from16 v0, p4

    invoke-direct {p0, v2, v4, p1, v0}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1305
    if-lez v4, :cond_3

    .line 1307
    add-int/2addr v9, v3

    .line 1311
    :cond_3
    if-eqz v8, :cond_4

    .line 1312
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1311
    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1313
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1316
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1318
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1321
    if-ltz p5, :cond_6

    .line 1322
    move/from16 v0, p5

    if-le v4, v0, :cond_6

    .line 1323
    if-lez v6, :cond_6

    .line 1324
    move/from16 v0, p4

    if-eq v9, v0, :cond_6

    .line 1321
    .end local v6    # "prevHeightWithoutPartialChild":I
    :goto_2
    return v6

    .line 1281
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "dividerHeight":I
    goto/16 :goto_0

    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevHeightWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_6
    move/from16 v6, p4

    .line 1326
    goto :goto_2

    .line 1329
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1330
    move v6, v9

    .line 1300
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1336
    .end local v2    # "child":Landroid/view/View;
    :cond_9
    return v9
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3682
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3684
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3685
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 3686
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3687
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3689
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3681
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3625
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3627
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3628
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3629
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3630
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3631
    iget v12, p0, Landroid/widget/ListView;->mScrollX:I

    iget v13, p0, Landroid/widget/ListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3635
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3636
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/ListView;->setListLayoutMode(I)Z

    .line 3637
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3642
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3643
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3644
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 3645
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3647
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3649
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3647
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3653
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3654
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3655
    invoke-virtual {p0, v10, v11}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3656
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3658
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 3659
    move v9, v6

    .line 3660
    move v5, v8

    .line 3661
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 3666
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 3667
    iget v12, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3624
    :goto_2
    return-void

    .line 3669
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 3993
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3995
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    .line 3996
    .local v7, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    const/4 v4, 0x1

    .line 3997
    .local v4, "isHeading":Z
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    .line 3999
    .local v5, "isSelected":Z
    const/4 v2, 0x0

    move v0, p2

    move v3, v1

    .line 3998
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 4000
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 3992
    return-void

    .line 3996
    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "isHeading":Z
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x0

    .line 3954
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3956
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 3957
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 3959
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    .line 3958
    invoke-static {v1, v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 3960
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 3962
    if-lez v1, :cond_0

    .line 3963
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3953
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2202
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2207
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2212
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1159
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1162
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1163
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1164
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1166
    .local v4, "heightSize":I
    const/4 v9, 0x0

    .line 1167
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1168
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1170
    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1171
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    .line 1172
    if-nez v10, :cond_1

    .line 1173
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1177
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p1, v4}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1179
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1180
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1181
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1183
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1184
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1183
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1189
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1190
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    .line 1191
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    .line 1190
    add-int v12, v0, v1

    .line 1196
    :goto_1
    if-nez v10, :cond_2

    .line 1197
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 1198
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 1197
    add-int v4, v0, v1

    .line 1201
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1203
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1206
    :cond_3
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1208
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1157
    return-void

    .line 1170
    :cond_4
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1193
    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1140
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1141
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1142
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1143
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1144
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1145
    .local v0, "childBottom":I
    iget v5, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v5, p2, v5

    sub-int v5, v0, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1146
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1147
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1148
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    invoke-direct {v5, p0, v7}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1150
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1153
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1139
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2377
    const/16 v3, 0x21

    if-ne p1, v3, :cond_3

    .line 2378
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2379
    .local v1, "nextPage":I
    const/4 v0, 0x0

    .line 2387
    .local v0, "down":Z
    :goto_0
    if-ltz v1, :cond_5

    .line 2388
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2389
    .local v2, "position":I
    if-ltz v2, :cond_5

    .line 2390
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setListLayoutMode(I)Z

    .line 2391
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2393
    if-eqz v0, :cond_0

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 2394
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setListLayoutMode(I)Z

    .line 2397
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2398
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->setListLayoutMode(I)Z

    .line 2401
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2402
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2403
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2404
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2407
    :cond_2
    return v7

    .line 2380
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    .end local v2    # "position":I
    :cond_3
    const/16 v3, 0x82

    if-ne p1, v3, :cond_4

    .line 2381
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2382
    .restart local v1    # "nextPage":I
    const/4 v0, 0x1

    .restart local v0    # "down":Z
    goto :goto_0

    .line 2384
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    :cond_4
    return v6

    .line 2411
    .restart local v0    # "down":Z
    .restart local v1    # "nextPage":I
    :cond_5
    return v6
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3970
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3971
    return v5

    .line 3974
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3987
    :cond_1
    return v4

    .line 3976
    :pswitch_0
    const-string/jumbo v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3977
    .local v1, "row":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3978
    .local v0, "position":I
    if-ltz v1, :cond_1

    .line 3981
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 3982
    return v5

    .line 3974
    nop

    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1243
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 437
    :cond_0
    const/4 v0, 0x1

    .line 439
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 440
    return v0

    .line 442
    .end local v0    # "result":Z
    :cond_2
    return v2
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 343
    :cond_0
    const/4 v0, 0x1

    .line 345
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 346
    return v0

    .line 348
    .end local v0    # "result":Z
    :cond_2
    return v2
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 592
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 595
    .local v9, "rectTopWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 598
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    .line 599
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v8

    .line 600
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    .line 601
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 603
    .local v5, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 605
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 606
    :cond_0
    add-int/2addr v8, v5

    .line 610
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 611
    .local v2, "childCount":I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 613
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 615
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    .line 616
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 617
    :cond_2
    sub-int/2addr v7, v5

    .line 621
    :cond_3
    const/4 v11, 0x0

    .line 623
    .local v11, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 630
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/lit8 v11, v13, 0x0

    .line 637
    :goto_0
    sub-int v4, v1, v7

    .line 638
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 658
    .end local v4    # "distanceToBottom":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 659
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 660
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 661
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 663
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 665
    :cond_5
    return v10

    .line 633
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/lit8 v11, v13, 0x0

    goto :goto_0

    .line 639
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 646
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    rsub-int/lit8 v11, v13, 0x0

    .line 653
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 654
    .local v12, "top":I
    sub-int v3, v12, v8

    .line 655
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 649
    .end local v3    # "deltaToTop":I
    .end local v12    # "top":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    rsub-int/lit8 v11, v13, 0x0

    goto :goto_3

    .line 658
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "scroll":Z
    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 545
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 547
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setListLayoutMode(I)Z

    .line 541
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 489
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 491
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 492
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 497
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 498
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 501
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 504
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 505
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 506
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 507
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 509
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 510
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 512
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 515
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 516
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 520
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 521
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 523
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 525
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 534
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 483
    return-void

    .line 494
    :cond_3
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 518
    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 528
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 529
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 531
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 3248
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3249
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3250
    if-eqz v0, :cond_1

    .line 3251
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3252
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3254
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3256
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3247
    return-void

    .line 3248
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "opaque":Z
    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3508
    if-eqz p1, :cond_1

    .line 3509
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3513
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3514
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3515
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3516
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3507
    return-void

    .line 3511
    :cond_1
    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3514
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3533
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3534
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3535
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3532
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3571
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3572
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3570
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3548
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3549
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3547
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3211
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3212
    if-nez p1, :cond_0

    .line 3213
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3210
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3612
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3613
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3611
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3591
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3592
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3593
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3590
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 465
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2045
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2044
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2169
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2170
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2171
    iput v2, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2172
    return-void

    .line 2175
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2176
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 2168
    :goto_0
    return-void

    .line 2178
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2179
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setListLayoutMode(I)Z

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2055
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2056
    const/4 v0, 0x0

    .line 2058
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2060
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 2061
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2062
    const/4 v0, 0x1

    .line 2068
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 2069
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2072
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2074
    if-eqz v0, :cond_2

    .line 2075
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2054
    :cond_2
    return-void

    .line 2063
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2064
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 951
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 942
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 941
    return-void
.end method
