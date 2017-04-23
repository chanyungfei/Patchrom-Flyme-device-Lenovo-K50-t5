.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$FlingRunnable;,
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method static synthetic -get0(Landroid/widget/Gallery;)I
    .locals 1

    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/Gallery;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/Gallery;)I
    .locals 1

    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/Gallery;)I
    .locals 1

    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/Gallery;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic -set0(Landroid/widget/Gallery;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/Gallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic -set2(Landroid/widget/Gallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/Gallery;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/Gallery;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 200
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    iput v6, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 88
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 125
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 131
    new-instance v5, Landroid/widget/Gallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 156
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 161
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 187
    iput-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 210
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 211
    iget-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 214
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    .line 213
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 216
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 217
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 218
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    .line 222
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 223
    .local v1, "animationDuration":I
    if-lez v1, :cond_1

    .line 224
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 228
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 229
    .local v3, "spacing":I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 232
    const/4 v5, 0x3

    const/high16 v6, 0x3f000000    # 0.5f

    .line 231
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 233
    .local v4, "unselectedAlpha":F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 235
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    .line 241
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    .line 207
    return-void
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 941
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Gallery;->getMeasuredHeight()I

    move-result v3

    .line 942
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 944
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 946
    .local v2, "childTop":I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 959
    :goto_2
    return v2

    .line 941
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    move-result v3

    .restart local v3    # "myHeight":I
    goto :goto_0

    .line 942
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .restart local v1    # "childHeight":I
    goto :goto_1

    .line 948
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 951
    :sswitch_1
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    .line 952
    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 951
    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 953
    .local v0, "availableSpace":I
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 954
    goto :goto_2

    .line 956
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    .line 957
    goto :goto_2

    .line 946
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .param p1, "toLeft"    # Z

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v7

    .line 491
    .local v7, "numChildren":I
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 492
    .local v2, "firstPosition":I
    const/4 v8, 0x0

    .line 493
    .local v8, "start":I
    const/4 v1, 0x0

    .line 495
    .local v1, "count":I
    if-eqz p1, :cond_5

    .line 496
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 497
    .local v3, "galleryLeft":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 498
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_3

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 499
    .local v6, "n":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_4

    .line 508
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_0
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v9, :cond_1

    .line 509
    const/4 v8, 0x0

    .line 529
    .end local v3    # "galleryLeft":I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    .line 531
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v9, :cond_2

    .line 532
    iget v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 489
    :cond_2
    return-void

    .line 498
    .restart local v3    # "galleryLeft":I
    :cond_3
    move v6, v5

    .restart local v6    # "n":I
    goto :goto_1

    .line 503
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    move v8, v6

    .line 504
    add-int/lit8 v1, v1, 0x1

    .line 505
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 497
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 513
    .local v4, "galleryRight":I
    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_6

    .line 514
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_7

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 515
    .restart local v6    # "n":I
    :goto_4
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 516
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v4, :cond_8

    .line 524
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_6
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_1

    .line 525
    const/4 v8, 0x0

    goto :goto_2

    .line 514
    :cond_7
    move v6, v5

    .restart local v6    # "n":I
    goto :goto_4

    .line 519
    .restart local v0    # "child":Landroid/view/View;
    :cond_8
    move v8, v6

    .line 520
    add-int/lit8 v1, v1, 0x1

    .line 521
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 513
    add-int/lit8 v5, v5, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1183
    const/4 v6, 0x0

    .line 1185
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1187
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    .line 1186
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1190
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    .line 1191
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1192
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1195
    :cond_1
    if-eqz v6, :cond_2

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1199
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1119
    if-eqz p1, :cond_0

    .line 1120
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1123
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1117
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1128
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1129
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1128
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1132
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1126
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    .line 696
    :goto_0
    return-void

    .line 700
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 736
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 737
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 740
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 744
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 745
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 746
    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 754
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 755
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 759
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 762
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 763
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 749
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    .line 750
    .restart local v0    # "curPosition":I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 751
    .restart local v1    # "curRightEdge":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 735
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 9

    .prologue
    .line 705
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 706
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 707
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 708
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 711
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 715
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 716
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v0, v7, v4

    .line 717
    .local v0, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 725
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v0, v7, :cond_1

    .line 726
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v0, v7

    .line 727
    const/4 v8, 0x0

    .line 726
    invoke-direct {p0, v0, v7, v1, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 730
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0    # "curPosition":I
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 721
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 722
    .restart local v1    # "curRightEdge":I
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 704
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 769
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    .line 767
    :goto_0
    return-void

    .line 771
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 807
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 808
    .local v3, "itemSpacing":I
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 809
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 810
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 813
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 817
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 818
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 819
    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 826
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 827
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 831
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 821
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 822
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 823
    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 806
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 776
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 777
    .local v3, "itemSpacing":I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 780
    .local v2, "galleryRight":I
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 784
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 785
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 786
    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 793
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz v1, :cond_1

    .line 794
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 798
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 801
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 802
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 788
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    const/4 v1, 0x0

    .line 789
    .restart local v1    # "curPosition":I
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 790
    .restart local v0    # "curLeftEdge":I
    iput-boolean v8, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 775
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    const/4 v3, 0x0

    .line 854
    iget-boolean v2, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 855
    iget-object v2, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 856
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 861
    .local v1, "childLeft":I
    iget v2, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 862
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 861
    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 863
    iget v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 866
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 868
    return-object v0

    .line 873
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    :cond_0
    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 876
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 878
    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 465
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 464
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 556
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 557
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 560
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 562
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 563
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 555
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 542
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 544
    :cond_1
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 545
    .local v1, "selectedCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .line 547
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .line 548
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_2

    .line 549
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 540
    :goto_0
    return-void

    .line 551
    :cond_2
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .param p1, "childPosition"    # I

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1278
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1279
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1280
    .local v1, "distance":I
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1281
    const/4 v2, 0x1

    return v2

    .line 1284
    .end local v1    # "distance":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 579
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 580
    .local v7, "selView":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_0

    return-void

    .line 582
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    .line 585
    .local v3, "galleryCenter":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_1

    .line 586
    return-void

    .line 590
    :cond_1
    const v2, 0x7fffffff

    .line 591
    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    .line 592
    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 594
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 598
    move v6, v4

    .line 610
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget v8, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v5, v8, v6

    .line 612
    .local v5, "newPos":I
    iget v8, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_3

    .line 613
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 614
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 615
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    .line 577
    :cond_3
    return-void

    .line 602
    .end local v5    # "newPos":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 603
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 602
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 604
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_5

    .line 605
    move v2, v1

    .line 606
    move v6, v4

    .line 592
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 897
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 898
    .local v6, "lp":Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 899
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 902
    .restart local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    :cond_0
    iget-boolean v8, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p4, v8, :cond_1

    const/4 v8, -0x1

    :goto_0
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v8, v6, v9}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 904
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 907
    iget v8, p0, Landroid/widget/Gallery;->mHeightMeasureSpec:I

    .line 908
    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->height:I

    .line 907
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 909
    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/Gallery;->mWidthMeasureSpec:I

    .line 910
    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->width:I

    .line 909
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 913
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 919
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 920
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 922
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 923
    .local v7, "width":I
    if-eqz p4, :cond_3

    .line 924
    move v2, p3

    .line 925
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 931
    .local v3, "childRight":I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 893
    return-void

    .line 902
    .end local v0    # "childBottom":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidthSpec":I
    .end local v7    # "width":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 904
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 927
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_3
    sub-int v2, p3, v7

    .line 928
    .restart local v2    # "childLeft":I
    move v3, p3

    .restart local v3    # "childRight":I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1297
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1299
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1300
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1301
    return-void

    .line 1304
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1305
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1307
    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1308
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1313
    :cond_1
    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    .line 1316
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1320
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1295
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 334
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1205
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 1148
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1145
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1136
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 352
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 344
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 339
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1376
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1341
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1344
    .local v0, "selectedIndex":I
    if-gez v0, :cond_0

    return p2

    .line 1346
    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_1

    .line 1348
    return v0

    .line 1349
    :cond_1
    if-lt p2, v0, :cond_2

    .line 1351
    add-int/lit8 v1, p2, 0x1

    return v1

    .line 1354
    :cond_2
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 308
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 309
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 311
    const/4 v0, 0x1

    return v0

    .line 309
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    .line 426
    iget-boolean v5, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v5, :cond_0

    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v5, -0x1

    .line 427
    .local v3, "extremeItemPosition":I
    :goto_0
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_1

    .line 430
    return p2

    .line 426
    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "extremeItemPosition":I
    goto :goto_0

    .line 433
    .restart local v1    # "extremeChild":Landroid/view/View;
    :cond_1
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 434
    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v4

    .line 436
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_2

    .line 437
    if-gt v2, v4, :cond_3

    .line 440
    return v6

    .line 443
    :cond_2
    if-lt v2, v4, :cond_3

    .line 446
    return v6

    .line 450
    :cond_3
    sub-int v0, v4, v2

    .line 452
    .local v0, "centerDifference":I
    if-eqz p1, :cond_4

    .line 453
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 452
    :goto_1
    return v5

    .line 454
    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 632
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 634
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 635
    .local v0, "childrenLeft":I
    iget v4, p0, Landroid/widget/Gallery;->mRight:I

    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 637
    .local v1, "childrenWidth":I
    iget-boolean v4, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 638
    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    .line 642
    :cond_0
    iget v4, p0, Landroid/widget/Gallery;->mItemCount:I

    if-nez v4, :cond_1

    .line 643
    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    .line 644
    return-void

    .line 648
    :cond_1
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 649
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 653
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    .line 657
    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    .line 663
    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 664
    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 672
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 673
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 676
    .local v2, "sel":Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 677
    iget v5, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 676
    add-int v3, v4, v5

    .line 678
    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 680
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 681
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 684
    iget-object v4, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 686
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 687
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    .line 689
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->setDataChanged(Z)Z

    .line 690
    iput-boolean v6, p0, Landroid/widget/Gallery;->mNeedSync:Z

    .line 691
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 693
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 630
    return-void
.end method

.method moveDirection(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 1264
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-int p1, p1

    .line 1265
    :cond_0
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    add-int v0, v1, p1

    .line 1267
    .local v0, "targetPosition":I
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v1, :cond_1

    if-ltz v0, :cond_1

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v0, v1, :cond_1

    .line 1268
    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1269
    const/4 v1, 0x1

    return v1

    .line 1271
    :cond_1
    return v2
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1094
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 1093
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1061
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1064
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1066
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1067
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1068
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1072
    :cond_0
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1075
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 1002
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1009
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1013
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1015
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1360
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1367
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1369
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1359
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1382
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1383
    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    if-le v2, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1384
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1386
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1388
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_1

    .line 1389
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1381
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1383
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1214
    sparse-switch p1, :sswitch_data_0

    .line 1234
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1217
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    .line 1219
    return v1

    .line 1223
    :sswitch_1
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->playSoundEffect(I)V

    .line 1225
    return v1

    .line 1230
    :sswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1214
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 1239
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1240
    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1241
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v1, :cond_0

    .line 1242
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1243
    new-instance v1, Landroid/widget/Gallery$2;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    .line 1248
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    .line 1243
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1250
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1251
    .local v0, "selectedIndex":I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 1252
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    .line 1251
    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1257
    .end local v0    # "selectedIndex":I
    :cond_0
    iput-boolean v6, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1258
    const/4 v1, 0x1

    return v1

    .line 1260
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Gallery;->mInLayout:Z

    .line 365
    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 366
    iput-boolean v1, p0, Landroid/widget/Gallery;->mInLayout:Z

    .line 357
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1100
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1101
    return-void

    .line 1104
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1105
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1106
    .local v0, "id":J
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    .line 1098
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1032
    iget-object v0, p0, Landroid/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1036
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1037
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1043
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1044
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1051
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1053
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1054
    return v1

    .line 1047
    :cond_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1112
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 982
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 985
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 988
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 989
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 990
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 989
    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 993
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 996
    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 966
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 968
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 969
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 971
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 976
    :cond_0
    :goto_0
    return v1

    .line 972
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 973
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->-get0(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 1087
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    .line 1081
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1397
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    const/4 v1, 0x1

    return v1

    .line 1400
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1414
    return v3

    .line 1402
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1403
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1404
    .local v0, "currentChildIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    return v1

    .line 1406
    .end local v0    # "currentChildIndex":I
    :cond_1
    return v3

    .line 1408
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v1, :cond_2

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v1, :cond_2

    .line 1409
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1410
    .restart local v0    # "currentChildIndex":I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    return v1

    .line 1412
    .end local v0    # "currentChildIndex":I
    :cond_2
    return v3

    .line 1400
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 569
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 567
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    .line 280
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 279
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 253
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 266
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1333
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1334
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 1335
    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    .line 1331
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1289
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1292
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1288
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 291
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 290
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .param p1, "unselectedAlpha"    # F

    .prologue
    .line 302
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    .line 301
    return-void
.end method

.method public showContextMenu()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1173
    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1174
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1175
    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1176
    .local v1, "v":Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/Gallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v4, v5}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    return v2

    .line 1179
    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return v3
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1161
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1162
    .local v2, "longPressPosition":I
    if-gez v2, :cond_0

    .line 1163
    return v3

    .line 1166
    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1167
    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    return v3
.end method

.method trackMotionScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I

    .prologue
    const/4 v7, 0x0

    .line 382
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 383
    return-void

    .line 386
    :cond_0
    if-gez p1, :cond_3

    const/4 v5, 0x1

    .line 388
    .local v5, "toLeft":Z
    :goto_0
    invoke-virtual {p0, v5, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v3

    .line 389
    .local v3, "limitedDeltaX":I
    if-eq v3, p1, :cond_1

    .line 391
    iget-object v6, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v6, v7}, Landroid/widget/Gallery$FlingRunnable;->-wrap0(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 392
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 395
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 397
    invoke-direct {p0, v5}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 399
    if-eqz v5, :cond_4

    .line 401
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 408
    :goto_1
    iget-object v6, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v6}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 410
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 412
    iget-object v4, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 413
    .local v4, "selChild":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 414
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 415
    .local v1, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 416
    .local v0, "childCenter":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 417
    .local v2, "galleryCenter":I
    add-int v6, v1, v0

    sub-int/2addr v6, v2

    iput v6, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 420
    .end local v0    # "childCenter":I
    .end local v1    # "childLeft":I
    .end local v2    # "galleryCenter":I
    :cond_2
    invoke-virtual {p0, v7, v7, v7, v7}, Landroid/widget/Gallery;->onScrollChanged(IIII)V

    .line 422
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 380
    return-void

    .line 386
    .end local v3    # "limitedDeltaX":I
    .end local v4    # "selChild":Landroid/view/View;
    .end local v5    # "toLeft":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "toLeft":Z
    goto :goto_0

    .line 404
    .restart local v3    # "limitedDeltaX":I
    :cond_4
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_1
.end method
