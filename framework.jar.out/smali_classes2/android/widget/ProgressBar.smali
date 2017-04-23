.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$RefreshProgressRunnable;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$SavedState;,
        Landroid/widget/ProgressBar$AccessibilityEventSender;,
        Landroid/widget/ProgressBar$ProgressTintInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ProgressBar"

.field private static final MAX_LEVEL:I = 0x2710

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method static synthetic -get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/ProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/ProgressBar;IIZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 209
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/ProgressBar;->DBG:Z

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 262
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 270
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 247
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 249
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 272
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    .line 273
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    .line 276
    sget-object v4, Lcom/android/internal/R$styleable;->ProgressBar:[I

    .line 275
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 278
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 280
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 281
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 285
    invoke-static {v2}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 286
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :cond_0
    :goto_0
    iget v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 295
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 296
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 297
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 298
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 300
    iget v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 303
    const/16 v4, 0xd

    .line 304
    const v5, 0x10a000b

    .line 302
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 305
    .local v3, "resID":I
    if-lez v3, :cond_1

    .line 306
    invoke-virtual {p0, p1, v3}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 309
    :cond_1
    iget v4, p0, Landroid/widget/ProgressBar;->mMax:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 311
    iget v4, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 314
    iget v4, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v5, 0x4

    .line 313
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 317
    const/4 v4, 0x7

    .line 316
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 318
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 319
    invoke-static {v1}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 320
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :cond_2
    :goto_1
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    const/4 v5, 0x6

    .line 326
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 329
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 331
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v4, :cond_16

    .line 332
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    const/4 v5, 0x5

    .line 331
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    :goto_2
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 334
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    const/16 v5, 0xf

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 336
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 337
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_3

    .line 338
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 340
    :cond_3
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 341
    const/16 v5, 0x11

    const/4 v6, -0x1

    .line 340
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 341
    const/4 v6, 0x0

    .line 340
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 342
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 345
    :cond_4
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 346
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_5

    .line 347
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 349
    :cond_5
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 350
    const/16 v5, 0x10

    .line 349
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 351
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 354
    :cond_6
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 355
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_7

    .line 356
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 358
    :cond_7
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 359
    const/16 v5, 0x13

    const/4 v6, -0x1

    .line 358
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 359
    const/4 v6, 0x0

    .line 358
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 360
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 363
    :cond_8
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 364
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_9

    .line 365
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 367
    :cond_9
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 368
    const/16 v5, 0x12

    .line 367
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 369
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 372
    :cond_a
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 373
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_b

    .line 374
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 376
    :cond_b
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 377
    const/16 v5, 0x15

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v6, 0x0

    .line 376
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 378
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 381
    :cond_c
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 382
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_d

    .line 383
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 385
    :cond_d
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 386
    const/16 v5, 0x14

    .line 385
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 387
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 390
    :cond_e
    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 391
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_f

    .line 392
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 394
    :cond_f
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 395
    const/16 v5, 0x17

    const/4 v6, -0x1

    .line 394
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 395
    const/4 v6, 0x0

    .line 394
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 396
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 399
    :cond_10
    const/16 v4, 0x16

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 400
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_11

    .line 401
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 403
    :cond_11
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 404
    const/16 v5, 0x16

    .line 403
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 405
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 408
    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 410
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    .line 411
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 414
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_13

    .line 415
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setImportantForAccessibility(I)V

    .line 269
    :cond_13
    return-void

    .line 288
    .end local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resID":I
    :cond_14
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 322
    .restart local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "resID":I
    :cond_15
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 331
    :cond_16
    const/4 v4, 0x1

    goto/16 :goto_2
.end method

.method private applyIndeterminateTint()V
    .locals 3

    .prologue
    .line 732
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_3

    .line 733
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 734
    .local v0, "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    .line 735
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 737
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 741
    :cond_1
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 742
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 747
    :cond_2
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 748
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 731
    .end local v0    # "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 3

    .prologue
    .line 848
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_0

    .line 849
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 848
    if-eqz v1, :cond_3

    .line 850
    :cond_0
    const v1, 0x102000d

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 851
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 852
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    .line 853
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 855
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 856
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 861
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 862
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 847
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 3

    .prologue
    .line 873
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_0

    .line 874
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 873
    if-eqz v1, :cond_3

    .line 875
    :cond_0
    const/high16 v1, 0x1020000

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 876
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 877
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    .line 878
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 880
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    .line 881
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 886
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 887
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 872
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    .line 837
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 838
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 839
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 835
    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 3

    .prologue
    .line 898
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_0

    .line 899
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 898
    if-eqz v1, :cond_3

    .line 900
    :cond_0
    const v1, 0x102000f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 901
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 902
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    .line 903
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 905
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 906
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 911
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 912
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 897
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    monitor-enter p0

    .line 1295
    :try_start_0
    iget v5, p0, Landroid/widget/ProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Landroid/widget/ProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 1296
    .local v4, "scale":F
    :goto_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1297
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 1298
    const/4 v3, 0x0

    .line 1300
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 1301
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1302
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1303
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1307
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 1308
    .local v2, "level":I
    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1313
    .end local v2    # "level":I
    :goto_2
    if-eqz p4, :cond_1

    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 1314
    invoke-virtual {p0, v4, p3, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1294
    return-void

    .line 1295
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "scale":F
    goto :goto_0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    :cond_3
    move-object v3, v1

    .line 1308
    goto :goto_1

    .line 1310
    .end local v2    # "level":I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    .prologue
    .line 1172
    const/4 v1, 0x0

    .line 1174
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1175
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1176
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1178
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1179
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1182
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 1183
    move-object v1, v0

    .line 1187
    :cond_1
    return-object v1
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 566
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 567
    iput v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 568
    iput v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 569
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 570
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 571
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 572
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 573
    iput v2, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 574
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 575
    iput v2, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 576
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 565
    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 427
    instance-of v4, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 428
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 429
    .local v3, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 430
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 431
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    return v6

    .line 430
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_1
    return v5

    .line 438
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    instance-of v4, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_5

    move-object v2, p0

    .line 439
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 440
    .local v2, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    .line 441
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 442
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 443
    return v6

    .line 441
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 446
    :cond_4
    return v5

    .line 451
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "in":Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_6

    .line 452
    return v6

    .line 455
    :cond_6
    return v5
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    monitor-enter p0

    .line 1325
    :try_start_0
    iget-wide v2, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1326
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 1324
    return-void

    .line 1328
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v1, :cond_2

    .line 1329
    new-instance v1, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable;)V

    iput-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 1332
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZ)Landroid/widget/ProgressBar$RefreshData;

    move-result-object v0

    .line 1333
    .local v0, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_0

    .line 1335
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1336
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1918
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1919
    new-instance v0, Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$AccessibilityEventSender;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    .line 1923
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1917
    return-void

    .line 1921
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    .line 466
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v12, :cond_4

    move-object/from16 v8, p1

    .line 467
    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    .line 468
    .local v8, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 469
    .local v1, "N":I
    new-array v10, v1, [Landroid/graphics/drawable/Drawable;

    .line 471
    .local v10, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 472
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 473
    .local v6, "id":I
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 474
    const v12, 0x102000d

    if-eq v6, v12, :cond_0

    const v12, 0x102000f

    if-ne v6, v12, :cond_1

    :cond_0
    const/4 v12, 0x1

    .line 473
    :goto_1
    invoke-direct {p0, v13, v12}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v10, v5

    .line 471
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 474
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 477
    .end local v6    # "id":I
    :cond_2
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 478
    .local v4, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_3

    .line 479
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 480
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 481
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 482
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 483
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 484
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 485
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 486
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 487
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 488
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v12

    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 478
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 491
    :cond_3
    return-object v4

    .line 494
    .end local v1    # "N":I
    .end local v4    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v5    # "i":I
    .end local v8    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v10    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v12, :cond_6

    move-object/from16 v7, p1

    .line 495
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    .line 496
    .local v7, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 497
    .local v9, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v1

    .line 498
    .restart local v1    # "N":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v1, :cond_5

    .line 499
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v12

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move/from16 v0, p2

    invoke-direct {p0, v13, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 498
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 502
    :cond_5
    return-object v9

    .line 505
    .end local v1    # "N":I
    .end local v5    # "i":I
    .end local v7    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v9    # "out":Landroid/graphics/drawable/StateListDrawable;
    :cond_6
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_9

    move-object/from16 v2, p1

    .line 506
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 507
    .local v2, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 508
    .local v11, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v12, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v12, :cond_7

    .line 509
    iput-object v11, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 512
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 513
    .local v3, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 515
    if-eqz p2, :cond_8

    .line 516
    new-instance v12, Landroid/graphics/drawable/ClipDrawable;

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-direct {v12, v3, v13, v14}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v12

    .line 518
    :cond_8
    return-object v3

    .line 522
    .end local v2    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_9
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 536
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 537
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 538
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 539
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 540
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 542
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 543
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 544
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 545
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 542
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 548
    move-object p1, v4

    .line 550
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1656
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int p1, p1, v12

    .line 1657
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v12, v13

    sub-int p2, p2, v12

    .line 1659
    move/from16 v8, p1

    .line 1660
    .local v8, "right":I
    move/from16 v1, p2

    .line 1661
    .local v1, "bottom":I
    const/4 v10, 0x0

    .line 1662
    .local v10, "top":I
    const/4 v7, 0x0

    .line 1664
    .local v7, "left":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 1666
    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v12, :cond_4

    .line 1687
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v12, :cond_1

    .line 1688
    move v9, v7

    .line 1689
    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    .line 1690
    sub-int v8, p1, v9

    .line 1692
    .end local v9    # "tempLeft":I
    :cond_1
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1695
    :cond_2
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 1696
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1653
    :cond_3
    return-void

    .line 1669
    :cond_4
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1670
    .local v6, "intrinsicWidth":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1671
    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    int-to-float v13, v5

    div-float v4, v12, v13

    .line 1672
    .local v4, "intrinsicAspect":F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    .line 1673
    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    if-eqz v12, :cond_0

    .line 1674
    cmpl-float v12, v2, v4

    if-lez v12, :cond_5

    .line 1676
    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v4

    float-to-int v11, v12

    .line 1677
    .local v11, "width":I
    sub-int v12, p1, v11

    div-int/lit8 v7, v12, 0x2

    .line 1678
    add-int v8, v7, v11

    goto :goto_0

    .line 1681
    .end local v11    # "width":I
    :cond_5
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v4

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .line 1682
    .local v3, "height":I
    sub-int v12, p2, v3

    div-int/lit8 v10, v12, 0x2

    .line 1683
    add-int v1, v10, v3

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1775
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1777
    .local v0, "state":[I
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1778
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1781
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1782
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1774
    :cond_1
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 1711
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1712
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1715
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1717
    .local v1, "saveCount":I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    .line 1718
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1719
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1724
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v4

    .line 1725
    .local v4, "time":J
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v3, :cond_0

    .line 1726
    iget-object v3, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1727
    iget-object v3, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    .line 1729
    .local v2, "scale":F
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1730
    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1734
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    .line 1737
    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1738
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1740
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v3, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    .line 1741
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1742
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1710
    .end local v1    # "saveCount":I
    .end local v4    # "time":J
    :cond_1
    return-void

    .line 1721
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "saveCount":I
    :cond_2
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    int-to-float v3, v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 1731
    .restart local v2    # "scale":F
    .restart local v4    # "time":J
    :catchall_0
    move-exception v3

    .line 1732
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1731
    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1788
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1790
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1794
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1795
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1787
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1770
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1771
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 1769
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1929
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1931
    const-string/jumbo v0, "progress:max"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1932
    const-string/jumbo v0, "progress:progress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1933
    const-string/jumbo v0, "progress:secondaryProgress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1934
    const-string/jumbo v0, "progress:indeterminate"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1928
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1899
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    const/16 v1, 0x8

    new-array v0, v1, [F

    .local v0, "roundedCorners":[F
    fill-array-data v0, :array_0

    .line 527
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 526
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 693
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 728
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 1465
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 1434
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1042
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1076
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 960
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 997
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 1451
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1121
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1159
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    monitor-enter p0

    .line 1506
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1505
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    monitor-enter p0

    .line 1517
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1516
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1634
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_1

    .line 1635
    iget-object v3, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v3, :cond_2

    .line 1636
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1637
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollX:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 1638
    .local v1, "scrollX":I
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollY:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .line 1640
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    .line 1641
    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    .line 1640
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    .line 1633
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_1
    :goto_0
    return-void

    .line 1643
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 586
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1224
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1225
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1226
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1223
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1861
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1862
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v3, :cond_0

    .line 1863
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    .line 1865
    :cond_0
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1866
    monitor-enter p0

    .line 1867
    :try_start_0
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1868
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1869
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    .line 1870
    .local v2, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget v3, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v4, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v5, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 1871
    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 1868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1873
    .end local v2    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_1
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1876
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 1860
    return-void

    .line 1866
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1881
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1882
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 1884
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1885
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1886
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    .line 1888
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    .line 1889
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1893
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1894
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 1880
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 1702
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1704
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1701
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1905
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1906
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1907
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1904
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    monitor-enter p0

    .line 1749
    const/4 v2, 0x0

    .line 1750
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1752
    .local v1, "dh":I
    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1753
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1754
    iget v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1755
    iget v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1758
    :cond_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 1760
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1761
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 1763
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    .line 1764
    .local v4, "measuredWidth":I
    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    .line 1765
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1748
    return-void

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    invoke-direct {p0}, Landroid/widget/ProgressBar;->scheduleAccessibilityEventSender()V

    .line 1318
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1235
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1238
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1239
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1241
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1242
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1233
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1852
    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    .line 1853
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1855
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1856
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1851
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1841
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1842
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1844
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    .line 1845
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 1847
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1650
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1649
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1620
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1622
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1624
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 1625
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 1619
    :cond_1
    :goto_0
    return-void

    .line 1627
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 1248
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 1249
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1247
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    .line 601
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 600
    return-void

    .line 601
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_0

    .line 602
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 604
    if-eqz p1, :cond_2

    .line 606
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 607
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 609
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 610
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 637
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 639
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 644
    if-eqz p1, :cond_2

    .line 645
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 646
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 647
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 650
    :cond_1
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 653
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    .line 654
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 655
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 635
    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 766
    if-eqz p1, :cond_0

    .line 767
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 770
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 678
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 680
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 681
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 683
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 676
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    const/4 v1, 0x0

    .line 708
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 711
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 712
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 714
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 707
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 1579
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1578
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1589
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1588
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    .line 1479
    :try_start_0
    sget-boolean v0, Landroid/widget/ProgressBar;->DBG:Z

    if-eqz v0, :cond_0

    .line 1480
    const-string/jumbo v0, "ProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMax, old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1481
    const-string/jumbo v2, ", backtrace = "

    .line 1480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1481
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 1480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1481
    const-string/jumbo v2, ", this = "

    .line 1480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_0
    if-gez p1, :cond_1

    .line 1485
    const/4 p1, 0x0

    .line 1487
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_3

    .line 1488
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 1489
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1491
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_2

    .line 1492
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 1494
    :cond_2
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 1478
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    .line 1354
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1353
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)Z
    .locals 4
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 1359
    :try_start_0
    sget-boolean v0, Landroid/widget/ProgressBar;->DBG:Z

    if-eqz v0, :cond_0

    .line 1360
    const-string/jumbo v0, "ProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgress, old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1361
    const-string/jumbo v2, ", max = "

    .line 1360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1361
    iget v2, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 1360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1362
    const-string/jumbo v2, ", backtrace = "

    .line 1360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1362
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 1360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1362
    const-string/jumbo v2, ", this = "

    .line 1360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    .line 1367
    return v3

    .line 1370
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 1372
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    monitor-exit p0

    .line 1374
    return v3

    .line 1377
    :cond_2
    :try_start_2
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 1378
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    invoke-direct {p0, v1, v0, p2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1379
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1022
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1023
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1025
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1026
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1028
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1029
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 1021
    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    const/4 v1, 0x0

    .line 1057
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1058
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1060
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1061
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1063
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1064
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 1056
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 794
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_5

    .line 795
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 797
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 802
    if-eqz p1, :cond_3

    .line 803
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 804
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 805
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 810
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 811
    .local v0, "drawableHeight":I
    iget v1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_2

    .line 812
    iput v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 813
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 816
    :cond_2
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    .line 819
    .end local v0    # "drawableHeight":I
    :cond_3
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_4

    .line 820
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 821
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 824
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 825
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 827
    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v2, 0x102000d

    invoke-direct {p0, v2, v1, v3, v3}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 828
    iget v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const v2, 0x102000f

    invoke-direct {p0, v2, v1, v3, v3}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 793
    :cond_5
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1202
    if-eqz p1, :cond_0

    .line 1203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1206
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1201
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 940
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 941
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 943
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 944
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 946
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 947
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 939
    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    const/4 v1, 0x0

    .line 975
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 976
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 978
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 979
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 981
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 982
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 974
    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    .line 1396
    :try_start_0
    sget-boolean v0, Landroid/widget/ProgressBar;->DBG:Z

    if-eqz v0, :cond_0

    .line 1397
    const-string/jumbo v0, "ProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecondaryProgress, old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1398
    const-string/jumbo v2, ", new = "

    .line 1397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1398
    const-string/jumbo v2, ", max = "

    .line 1397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1398
    iget v2, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 1397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1399
    const-string/jumbo v2, ", backtrace = "

    .line 1397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1399
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 1397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1399
    const-string/jumbo v2, ", this = "

    .line 1397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    .line 1403
    return-void

    .line 1406
    :cond_1
    if-gez p1, :cond_2

    .line 1407
    const/4 p1, 0x0

    .line 1410
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 1411
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 1414
    :cond_3
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_4

    .line 1415
    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 1416
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const v1, 0x102000f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    .line 1395
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v1, 0x0

    .line 1100
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1103
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1104
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1106
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1107
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 1099
    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    const/4 v1, 0x0

    .line 1137
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1138
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1140
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1141
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1143
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1144
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 1136
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1604
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1605
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1609
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1610
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 1603
    :cond_1
    :goto_0
    return-void

    .line 1612
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1524
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    return-void

    .line 1528
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 1529
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1530
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1556
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1523
    return-void

    .line 1532
    :cond_1
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1534
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 1535
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1538
    :cond_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 1539
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 1544
    :goto_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 1545
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1550
    :goto_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1551
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1552
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1553
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1554
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_0

    .line 1541
    :cond_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_1

    .line 1547
    :cond_4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_2
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1563
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1564
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1566
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1568
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1562
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1218
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1219
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0
.end method
