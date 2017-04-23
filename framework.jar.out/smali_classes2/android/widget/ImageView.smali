.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ImageViewBitmapDrawable;,
        Landroid/widget/ImageView$ScaleType;
    }
.end annotation


# static fields
.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAdjustViewBoundsCompat:Z

.field private mAlpha:I

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableTintList:Landroid/content/res/ColorStateList;

.field private mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mDrawableWidth:I

.field private mHasColorFilter:Z

.field private mHasDrawableTint:Z

.field private mHasDrawableTintMode:Z

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 120
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v3

    .line 121
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v4

    .line 122
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v5

    .line 123
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v6

    .line 124
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v7

    .line 125
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 126
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 127
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 119
    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 928
    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    .line 929
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    .line 930
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    .line 931
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    .line 932
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v6

    .line 928
    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    iput v1, p0, Landroid/widget/ImageView;->mResource:I

    .line 80
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 81
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 82
    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 83
    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 86
    iput-object v2, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 87
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 89
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 90
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 91
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 93
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    .line 95
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 96
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 97
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 98
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 100
    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    .line 101
    iput-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 102
    iput v1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 105
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 114
    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 117
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    .line 132
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v9, 0x7fffffff

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    .line 80
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 81
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 82
    iput v9, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 83
    iput v9, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 86
    iput-object v5, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 87
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 89
    const/16 v4, 0xff

    iput v4, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 90
    const/16 v4, 0x100

    iput v4, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 91
    iput-boolean v6, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 93
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object v5, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    .line 95
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 96
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 97
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 98
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 100
    iput-object v5, p0, Landroid/widget/ImageView;->mState:[I

    .line 101
    iput-boolean v6, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 102
    iput v6, p0, Landroid/widget/ImageView;->mLevel:I

    .line 105
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 108
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 109
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 113
    iput v7, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 114
    iput-boolean v6, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 117
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    .line 147
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 150
    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    .line 149
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 153
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_0
    const/4 v4, 0x6

    .line 157
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 161
    const/16 v4, 0x8

    .line 160
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 164
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 163
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 168
    const/4 v4, 0x3

    .line 167
    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 171
    const/4 v4, 0x4

    .line 170
    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 173
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 174
    .local v3, "index":I
    if-ltz v3, :cond_1

    .line 175
    sget-object v4, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    :cond_1
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 180
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 184
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 185
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 188
    :cond_2
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 190
    const/16 v4, 0x9

    .line 189
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 190
    iget-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 189
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 191
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 194
    :cond_3
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 196
    const/16 v4, 0xa

    const/16 v5, 0xff

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 197
    .local v1, "alpha":I
    const/16 v4, 0xff

    if-eq v1, v4, :cond_4

    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 202
    :cond_4
    const/4 v4, 0x7

    .line 201
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    return-void
.end method

.method private applyColorMod()V
    .locals 3

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    if-eqz v0, :cond_1

    .line 1424
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1425
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1428
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 1429
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    iget v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1419
    :cond_1
    return-void
.end method

.method private applyImageTint()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    if-eqz v0, :cond_3

    .line 560
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 562
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 566
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 572
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 558
    :cond_3
    return-void
.end method

.method private configureBounds()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    .line 1094
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    if-eqz v8, :cond_3

    .line 1098
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1099
    .local v1, "dwidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1101
    .local v0, "dheight":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int v7, v8, v9

    .line 1102
    .local v7, "vwidth":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int v6, v8, v9

    .line 1104
    .local v6, "vheight":I
    if-ltz v1, :cond_0

    if-ne v7, v1, :cond_5

    .line 1105
    :cond_0
    if-ltz v0, :cond_1

    if-ne v6, v0, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 1107
    .local v4, "fits":Z
    :goto_0
    if-lez v1, :cond_2

    if-gtz v0, :cond_6

    .line 1111
    :cond_2
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10, v10, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1112
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1093
    :goto_1
    return-void

    .line 1095
    .end local v0    # "dheight":I
    .end local v1    # "dwidth":I
    .end local v4    # "fits":Z
    .end local v6    # "vheight":I
    .end local v7    # "vwidth":I
    :cond_3
    return-void

    .line 1105
    .restart local v0    # "dheight":I
    .restart local v1    # "dwidth":I
    .restart local v6    # "vheight":I
    .restart local v7    # "vwidth":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "fits":Z
    goto :goto_0

    .line 1104
    .end local v4    # "fits":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "fits":Z
    goto :goto_0

    .line 1107
    :cond_6
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v9, :cond_2

    .line 1116
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1118
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_8

    .line 1120
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1121
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 1123
    :cond_7
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 1125
    :cond_8
    if-eqz v4, :cond_9

    .line 1127
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 1128
    :cond_9
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_a

    .line 1130
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1131
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v9, v7, v1

    int-to-float v9, v9

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    .line 1132
    sub-int v10, v6, v0

    int-to-float v10, v10

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    .line 1131
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1

    .line 1133
    :cond_a
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_c

    .line 1134
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1137
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 1139
    .local v3, "dy":F
    mul-int v8, v1, v6

    mul-int v9, v7, v0

    if-le v8, v9, :cond_b

    .line 1140
    int-to-float v8, v6

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 1141
    .local v5, "scale":F
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v2, v8, v11

    .line 1147
    :goto_2
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1148
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 1143
    .end local v5    # "scale":F
    :cond_b
    int-to-float v8, v7

    int-to-float v9, v1

    div-float v5, v8, v9

    .line 1144
    .restart local v5    # "scale":F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v3, v8, v11

    goto :goto_2

    .line 1149
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_c
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_e

    .line 1150
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1155
    if-gt v1, v7, :cond_d

    if-gt v0, v6, :cond_d

    .line 1156
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1162
    .restart local v5    # "scale":F
    :goto_3
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v2, v8

    .line 1163
    .restart local v2    # "dx":F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v3, v8

    .line 1165
    .restart local v3    # "dy":F
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1166
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 1158
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_d
    int-to-float v8, v7

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 1159
    int-to-float v9, v6

    int-to-float v10, v0

    div-float/2addr v9, v10

    .line 1158
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .restart local v5    # "scale":F
    goto :goto_3

    .line 1169
    .end local v5    # "scale":F
    :cond_e
    iget-object v8, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v0

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1170
    iget-object v8, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v9, v7

    int-to-float v10, v6

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1172
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1173
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v10, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v11, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v11}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1
.end method

.method private initImageView()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 211
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 212
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 213
    const/16 v1, 0x11

    .line 212
    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    .line 209
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFilledByImage()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1442
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 1443
    return v5

    .line 1446
    :cond_0
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1447
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1448
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-nez v3, :cond_3

    .line 1449
    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-gtz v6, :cond_2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-gtz v6, :cond_2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 1450
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 1449
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 1450
    goto :goto_0

    :cond_2
    move v4, v5

    .line 1449
    goto :goto_0

    .line 1451
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1452
    iget-object v2, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 1453
    .local v2, "boundsSrc":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 1454
    .local v1, "boundsDst":Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1455
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1456
    iget v6, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    iget v6, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    .line 1457
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 1456
    :goto_1
    return v4

    :cond_4
    move v4, v5

    .line 1457
    goto :goto_1

    :cond_5
    move v4, v5

    .line 1456
    goto :goto_1

    .line 1460
    .end local v1    # "boundsDst":Landroid/graphics/RectF;
    .end local v2    # "boundsSrc":Landroid/graphics/RectF;
    :cond_6
    return v5
.end method

.method private resizeFromDrawable()V
    .locals 4

    .prologue
    .line 905
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 906
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 907
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 908
    .local v2, "w":I
    if-gez v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 909
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 910
    .local v1, "h":I
    if-gez v1, :cond_1

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 911
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v3, :cond_3

    .line 912
    :cond_2
    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 913
    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 914
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 904
    .end local v1    # "h":I
    .end local v2    # "w":I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1061
    move v0, p1

    .line 1062
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1063
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1064
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 1082
    :goto_0
    return v0

    .line 1069
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1075
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1079
    :sswitch_2
    move v0, v2

    .line 1080
    goto :goto_0

    .line 1064
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveUri()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 798
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    .line 799
    return-void

    .line 802
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 803
    .local v4, "rsrc":Landroid/content/res/Resources;
    if-nez v4, :cond_1

    .line 804
    return-void

    .line 807
    :cond_1
    const/4 v0, 0x0

    .line 809
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v7, p0, Landroid/widget/ImageView;->mResource:I

    if-eqz v7, :cond_3

    .line 811
    :try_start_0
    iget-object v7, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v8, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 858
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 797
    return-void

    .line 812
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 813
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to find resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    iput-object v10, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 817
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_9

    .line 818
    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 819
    .local v5, "scheme":Ljava/lang/String;
    const-string/jumbo v7, "android.resource"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 823
    :try_start_1
    iget-object v7, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v3

    .line 824
    .local v3, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v8, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v9, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 849
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_4
    :goto_1
    if-nez v0, :cond_2

    .line 850
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 852
    iput-object v10, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 825
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v2

    .line 826
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to open content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 828
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v7, "content"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 829
    const-string/jumbo v7, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 828
    if-eqz v7, :cond_8

    .line 830
    :cond_6
    const/4 v6, 0x0

    .line 832
    .local v6, "stream":Ljava/io/InputStream;
    :try_start_2
    iget-object v7, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 833
    .local v6, "stream":Ljava/io/InputStream;
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 837
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 839
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 840
    :catch_2
    move-exception v1

    .line 841
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to close content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 834
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/InputStream;
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v2

    .line 835
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to open content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 837
    if-eqz v6, :cond_4

    .line 839
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 840
    :catch_4
    move-exception v1

    .line 841
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to close content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 836
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 837
    if-eqz v6, :cond_7

    .line 839
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 836
    :cond_7
    :goto_2
    throw v7

    .line 840
    :catch_5
    move-exception v1

    .line 841
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "ImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to close content: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 846
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 855
    .end local v5    # "scheme":Ljava/lang/String;
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :cond_9
    return-void
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2
    .param p0, "st"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 937
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 874
    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    if-eqz v2, :cond_0

    .line 875
    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView$ImageViewBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 878
    :cond_0
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 880
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    :cond_1
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 885
    if-eqz p1, :cond_4

    .line 886
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 887
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 888
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 889
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 891
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 892
    iget v0, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 893
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 894
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 895
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 896
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 898
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 873
    :goto_0
    return-void

    .line 900
    :cond_4
    iput v4, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput v4, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    goto :goto_0
.end method


# virtual methods
.method public animateTransform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 1198
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1199
    return-void

    .line 1201
    :cond_0
    if-nez p1, :cond_1

    .line 1202
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1210
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1197
    return-void

    .line 1204
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1205
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 1206
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1208
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public final clearColorFilter()V
    .locals 1

    .prologue
    .line 1334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1333
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1189
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1191
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1188
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1180
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1181
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1182
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1179
    :cond_0
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1497
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1498
    const-string/jumbo v0, "layout:baseline"

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBaseline()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1496
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1491
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdjustViewBounds()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    return v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 1259
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 1262
    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    return v0
.end method

.method public getBaselineAlignBottom()Z
    .locals 1

    .prologue
    .line 1305
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getCropToPadding()Z
    .locals 1

    .prologue
    .line 777
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    if-ne v0, v1, :cond_0

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    .line 391
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageAlpha()I
    .locals 1

    .prologue
    .line 1385
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0

    .line 742
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 229
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_2

    .line 230
    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 233
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 234
    .local v0, "h":I
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1

    .line 235
    :cond_0
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 236
    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 246
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 228
    :goto_0
    return-void

    .line 248
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 1435
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-nez v0, :cond_1

    .line 1436
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1437
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    iget v1, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 1438
    invoke-direct {p0}, Landroid/widget/ImageView;->isFilledByImage()Z

    move-result v0

    .line 1435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 224
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 222
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1475
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1476
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1474
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1477
    goto :goto_0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 863
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_0

    .line 864
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 865
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_1

    .line 866
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    return-object v0

    .line 869
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    .line 868
    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1483
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1484
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1482
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1215
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1217
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 1218
    return-void

    .line 1221
    :cond_0
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-nez v3, :cond_2

    .line 1222
    :cond_1
    return-void

    .line 1225
    :cond_2
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    if-nez v3, :cond_3

    .line 1226
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1214
    :goto_0
    return-void

    .line 1228
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1229
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1231
    iget-boolean v3, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v3, :cond_4

    .line 1232
    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    .line 1233
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    .line 1234
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    add-int/2addr v4, v2

    .line 1235
    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ImageView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v5, v6

    .line 1236
    iget v6, p0, Landroid/widget/ImageView;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/ImageView;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    .line 1234
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1239
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_4
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1241
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_5

    .line 1242
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1244
    :cond_5
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1245
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 942
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 947
    const/4 v5, 0x0

    .line 950
    .local v5, "desiredAspect":F
    const/16 v17, 0x0

    .line 953
    .local v17, "resizeWidth":Z
    const/16 v16, 0x0

    .line 955
    .local v16, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 956
    .local v20, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 958
    .local v9, "heightSpecMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 960
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 961
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 962
    const/4 v7, 0x0

    .local v7, "h":I
    const/16 v18, 0x0

    .line 979
    .local v18, "w":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    .line 980
    .local v13, "pleft":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ImageView;->mPaddingRight:I

    .line 981
    .local v14, "pright":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ImageView;->mPaddingTop:I

    .line 982
    .local v15, "ptop":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    .line 987
    .local v12, "pbottom":I
    if-nez v17, :cond_1

    if-eqz v16, :cond_d

    .line 994
    :cond_1
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    .line 997
    .local v19, "widthSize":I
    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 999
    .local v8, "heightSize":I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_5

    .line 1001
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    .line 1002
    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1001
    div-float v4, v21, v22

    .line 1004
    .local v4, "actualAspect":F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v21, v22, v24

    if-lez v21, :cond_5

    .line 1006
    const/4 v6, 0x0

    .line 1009
    .local v6, "done":Z
    if-eqz v17, :cond_3

    .line 1010
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 1014
    .local v11, "newWidth":I
    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 1018
    :cond_2
    :goto_1
    move/from16 v0, v19

    if-gt v11, v0, :cond_3

    .line 1019
    move/from16 v19, v11

    .line 1020
    const/4 v6, 0x1

    .line 1025
    .end local v11    # "newWidth":I
    :cond_3
    if-nez v6, :cond_5

    if-eqz v16, :cond_5

    .line 1026
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 1030
    .local v10, "newHeight":I
    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1035
    :cond_4
    :goto_2
    if-gt v10, v8, :cond_5

    .line 1036
    move v8, v10

    .line 1056
    .end local v4    # "actualAspect":F
    .end local v6    # "done":Z
    .end local v10    # "newHeight":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 941
    return-void

    .line 964
    .end local v7    # "h":I
    .end local v8    # "heightSize":I
    .end local v12    # "pbottom":I
    .end local v13    # "pleft":I
    .end local v14    # "pright":I
    .end local v15    # "ptop":I
    .end local v18    # "w":I
    .end local v19    # "widthSize":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    move/from16 v18, v0

    .line 965
    .restart local v18    # "w":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 966
    .restart local v7    # "h":I
    if-gtz v18, :cond_7

    const/16 v18, 0x1

    .line 967
    :cond_7
    if-gtz v7, :cond_8

    const/4 v7, 0x1

    .line 971
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 972
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    const/16 v17, 0x1

    .line 973
    :goto_4
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v9, v0, :cond_a

    const/16 v16, 0x1

    .line 975
    :goto_5
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_0

    .line 972
    :cond_9
    const/16 v17, 0x0

    goto :goto_4

    .line 973
    :cond_a
    const/16 v16, 0x0

    goto :goto_5

    .line 1015
    .restart local v4    # "actualAspect":F
    .restart local v6    # "done":Z
    .restart local v8    # "heightSize":I
    .restart local v11    # "newWidth":I
    .restart local v12    # "pbottom":I
    .restart local v13    # "pleft":I
    .restart local v14    # "pright":I
    .restart local v15    # "ptop":I
    .restart local v19    # "widthSize":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v11, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    goto/16 :goto_1

    .line 1031
    .end local v11    # "newWidth":I
    .restart local v10    # "newHeight":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v10, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    goto :goto_2

    .line 1046
    .end local v4    # "actualAspect":F
    .end local v6    # "done":Z
    .end local v8    # "heightSize":I
    .end local v10    # "newHeight":I
    .end local v19    # "widthSize":I
    :cond_d
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 1047
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 1049
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1050
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1052
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v19

    .line 1053
    .restart local v19    # "widthSize":I
    const/16 v21, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v7, v0, v1}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v8

    .restart local v8    # "heightSize":I
    goto/16 :goto_3
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 261
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 262
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 921
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 923
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 920
    :cond_0
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .param p1, "adjustViewBounds"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 301
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 302
    if-eqz p1, :cond_0

    .line 303
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 300
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1410
    and-int/lit16 p1, p1, 0xff

    .line 1411
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 1412
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 1413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1414
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1415
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1409
    :cond_0
    return-void
.end method

.method public setBaseline(I)V
    .locals 1
    .param p1, "baseline"    # I

    .prologue
    .line 1277
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_0

    .line 1278
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 1279
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1276
    :cond_0
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .locals 1
    .param p1, "aligned"    # Z

    .prologue
    .line 1293
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_0

    .line 1294
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1295
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1292
    :cond_0
    return-void
.end method

.method public final setColorFilter(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1330
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1329
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1318
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1317
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v1, 0x1

    .line 1368
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1369
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1370
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 1371
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1372
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1373
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1367
    :cond_0
    return-void
.end method

.method public setCropToPadding(Z)V
    .locals 1
    .param p1, "cropToPadding"    # Z

    .prologue
    .line 790
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eq v0, p1, :cond_0

    .line 791
    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 792
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 793
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 789
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1087
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 1088
    .local v0, "changed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 1089
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 1090
    return v0
.end method

.method public setImageAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1397
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1396
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 599
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Landroid/widget/ImageView$ImageViewBitmapDrawable;

    .line 601
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 600
    invoke-direct {v0, v1, p1}, Landroid/widget/ImageView$ImageViewBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    .line 605
    :goto_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView$ImageViewBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 465
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_2

    .line 466
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    .line 467
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 469
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 470
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 472
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1

    .line 475
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 477
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 464
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_2
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 496
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setImageLevel(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 631
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 632
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 634
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 630
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 754
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const/4 p1, 0x0

    .line 759
    .end local p1    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 760
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    :cond_2
    :goto_0
    return-void

    .line 761
    :cond_3
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 762
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 763
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 411
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 412
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 414
    .local v0, "oldHeight":I
    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 416
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 418
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 420
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 423
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 408
    return-void
.end method

.method public setImageState([IZ)V
    .locals 1
    .param p1, "state"    # [I
    .param p2, "merge"    # Z

    .prologue
    .line 609
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    .line 610
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 611
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 613
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 608
    :cond_0
    return-void
.end method

.method public setImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 514
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 517
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 513
    return-void
.end method

.method public setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 542
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 545
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 541
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 439
    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v2, :cond_0

    .line 440
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v2, p1, :cond_3

    .line 441
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_4

    .line 442
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iput v4, p0, Landroid/widget/ImageView;->mResource:I

    .line 444
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 446
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 447
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 449
    .local v0, "oldHeight":I
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 451
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_2

    .line 452
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 454
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 438
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_3
    :goto_0
    return-void

    .line 441
    :cond_4
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 380
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 379
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 342
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 341
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 707
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 710
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 711
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 713
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    .line 715
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 716
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 705
    :cond_1
    return-void

    .line 713
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 619
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 620
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 618
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1467
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1468
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1469
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1466
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1469
    goto :goto_0
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 1341
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_0

    .line 1342
    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1344
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1345
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1340
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 218
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
