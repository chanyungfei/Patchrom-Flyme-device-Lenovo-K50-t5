.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final DRAWABLE_LEFT:I = 0x1

.field static final DRAWABLE_NONE:I = -0x1

.field static final DRAWABLE_RIGHT:I = 0x0

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field final mCompoundRect:Landroid/graphics/Rect;

.field mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field mDrawableError:Landroid/graphics/drawable/Drawable;

.field mDrawableHeightEnd:I

.field mDrawableHeightError:I

.field mDrawableHeightLeft:I

.field mDrawableHeightRight:I

.field mDrawableHeightStart:I

.field mDrawableHeightTemp:I

.field mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field mDrawablePadding:I

.field mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field mDrawableSaved:I

.field mDrawableSizeBottom:I

.field mDrawableSizeEnd:I

.field mDrawableSizeError:I

.field mDrawableSizeLeft:I

.field mDrawableSizeRight:I

.field mDrawableSizeStart:I

.field mDrawableSizeTemp:I

.field mDrawableSizeTop:I

.field mDrawableStart:Landroid/graphics/drawable/Drawable;

.field mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field mDrawableWidthBottom:I

.field mDrawableWidthTop:I

.field mHasTint:Z

.field mHasTintMode:Z

.field mIsRtlCompatibilityMode:Z

.field mOverride:Z

.field final mShowing:[Landroid/graphics/drawable/Drawable;

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 361
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 382
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 386
    .local v0, "targetSdkVersion":I
    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 386
    :cond_0
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    .line 388
    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 384
    return-void
.end method

.method private applyErrorDrawableIfNeeded(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 473
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    packed-switch v0, :pswitch_data_0

    .line 488
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 489
    packed-switch p1, :pswitch_data_1

    .line 503
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 505
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 506
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 507
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 509
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 510
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 511
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 471
    :cond_0
    :goto_1
    return-void

    .line 475
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 476
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 477
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_0

    .line 480
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 481
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 482
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 491
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 493
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 494
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 495
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 497
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 498
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 499
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_1

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 489
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private updateDrawablesLayoutDirection(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 444
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 445
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 444
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method


# virtual methods
.method public resolveWithLayoutDirection(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 394
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 396
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 400
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 401
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 404
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 406
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 407
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 439
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    .line 440
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->updateDrawablesLayoutDirection(I)V

    .line 391
    return-void

    .line 412
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 427
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 429
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 430
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 432
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 433
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 434
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 414
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 416
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 417
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 419
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 420
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 421
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 5
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tv"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 452
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 455
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 457
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 458
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 459
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 461
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 462
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 463
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 464
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 465
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 451
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "state":[I
    :goto_0
    return-void

    .line 467
    :cond_1
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    goto :goto_0
.end method
