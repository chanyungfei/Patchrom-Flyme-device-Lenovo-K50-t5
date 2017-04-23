.class public abstract Landroid/widget/AbsSpinner;
.super Landroid/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSpinner$SavedState;,
        Landroid/widget/AbsSpinner$RecycleBin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 50
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 51
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 52
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 63
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 50
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 51
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 52
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 53
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 55
    new-instance v3, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v3, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 76
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    .line 79
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    .line 78
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 82
    .local v2, "entries":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 83
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 84
    const v3, 0x1090008

    .line 83
    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 85
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setFocusable(Z)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 95
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 253
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 254
    const/4 v1, -0x1

    .line 255
    const/4 v2, -0x2

    .line 253
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 478
    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 311
    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 313
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 172
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 176
    .local v6, "widthMode":I
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_5

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 178
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 180
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 182
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_8

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 185
    iget-boolean v8, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    .line 189
    :cond_0
    const/4 v2, 0x0

    .line 190
    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .line 191
    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    .line 193
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 194
    .local v4, "selectedPosition":I
    if-ltz v4, :cond_3

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 196
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 197
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 199
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 201
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 202
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 206
    :cond_1
    if-eqz v5, :cond_3

    .line 208
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 210
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    .line 211
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 212
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 215
    :cond_2
    invoke-virtual {p0, v5, p1, p2}, Landroid/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 217
    invoke-virtual {p0, v5}, Landroid/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 218
    invoke-virtual {p0, v5}, Landroid/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 220
    const/4 v1, 0x0

    .line 224
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_4

    .line 226
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 227
    if-nez v6, :cond_4

    .line 228
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 232
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 233
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 235
    const/4 v8, 0x0

    invoke-static {v2, p2, v8}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v0

    .line 236
    .local v0, "heightSize":I
    const/4 v8, 0x0

    invoke-static {v3, p1, v8}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v7

    .line 238
    .local v7, "widthSize":I
    invoke-virtual {p0, v7, v0}, Landroid/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 239
    iput p2, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 240
    iput p1, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 171
    return-void

    .line 177
    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v7    # "widthSize":I
    :cond_5
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 179
    :cond_6
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 181
    :cond_7
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 183
    :cond_8
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v6, 0x1

    move-object v0, p1

    .line 430
    check-cast v0, Landroid/widget/AbsSpinner$SavedState;

    .line 432
    .local v0, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 434
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 435
    invoke-virtual {p0, v6}, Landroid/widget/AbsSpinner;->setDataChanged(Z)Z

    .line 436
    iput-boolean v6, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    .line 437
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsSpinner;->mSyncRowId:J

    .line 438
    iget v1, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->setSyncPosition(I)Z

    .line 439
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncMode:I

    .line 440
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 429
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 417
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 418
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 419
    .local v0, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    .line 420
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    .line 425
    :goto_0
    return-object v0

    .line 423
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 349
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 350
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 351
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 352
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 356
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 357
    invoke-virtual {p0, v3}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 359
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 360
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    iget v4, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    return v4

    .line 356
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 365
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 260
    .local v0, "childCount":I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 261
    .local v4, "recycleBin":Landroid/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    .line 264
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 265
    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 266
    .local v5, "v":Landroid/view/View;
    add-int v2, v3, v1

    .line 267
    .local v2, "index":I
    invoke-virtual {v4, v2, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v2    # "index":I
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 326
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 324
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setDataChanged(Z)Z

    .line 151
    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    .line 153
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 154
    iput v2, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 155
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 157
    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 158
    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 159
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    .line 149
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 107
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 108
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 110
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 113
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 116
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 118
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 119
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsSpinner;->mOldItemCount:I

    .line 120
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    .line 121
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    .line 123
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 124
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 126
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 128
    .local v0, "position":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 131
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    .line 143
    .end local v0    # "position":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 107
    return-void

    .line 126
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "position":I
    goto :goto_0

    .line 137
    .end local v0    # "position":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    .line 138
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 140
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 284
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 285
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    .line 282
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 276
    if-eqz p2, :cond_1

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_1

    .line 277
    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 278
    .local v0, "shouldAnimate":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 274
    return-void

    .line 277
    .end local v0    # "shouldAnimate":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "shouldAnimate":Z
    goto :goto_0

    .line 276
    .end local v0    # "shouldAnimate":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "shouldAnimate":Z
    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 297
    iget v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 298
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 299
    iget v1, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 300
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 301
    invoke-virtual {p0, v0, p2}, Landroid/widget/AbsSpinner;->layout(IZ)V

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 296
    .end local v0    # "delta":I
    :cond_0
    return-void
.end method
