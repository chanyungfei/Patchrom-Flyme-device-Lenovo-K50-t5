.class public Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;
.super Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;
.source "FlipLoadingLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static synthetic -com_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues:[I = null

.field static final FLIP_ANIMATION_DURATION:I = 0x96


# instance fields
.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method private static synthetic -getcom_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->-com_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->-com_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->values()[Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->-com_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/component/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 44
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p2, v0, :cond_0

    const/16 v7, -0xb4

    .line 46
    .local v7, "rotateAngle":I
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v7

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 47
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 46
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 48
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 52
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 53
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 52
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 54
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 55
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 41
    return-void

    .line 44
    .end local v7    # "rotateAngle":I
    :cond_0
    const/16 v7, 0xb4

    .restart local v7    # "rotateAngle":I
    goto :goto_0
.end method

.method private getDrawableRotationAngle()F
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "angle":F
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->-getcom_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mMode:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 127
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mScrollDirection:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    sget-object v2, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne v1, v2, :cond_1

    .line 128
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 130
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mScrollDirection:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    sget-object v2, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne v1, v2, :cond_0

    .line 136
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getDefaultDrawableResId()I
    .locals 1

    .prologue
    .line 120
    const v0, 0x9020091

    return v0
.end method

.method protected onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 63
    .local v0, "dHeight":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 70
    .local v1, "dWidth":I
    iget-object v4, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 71
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    iget-object v4, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 78
    iget-object v4, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 80
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 81
    invoke-direct {p0}, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->getDrawableRotationAngle()F

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 82
    iget-object v4, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 60
    .end local v0    # "dHeight":I
    .end local v1    # "dWidth":I
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method protected onPullImpl(F)V
    .locals 3
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 88
    const-string/jumbo v0, "FlipLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scaleOfLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method protected pullToRefreshImpl()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected refreshingImpl()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 102
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void
.end method

.method protected resetImpl()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 114
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    return-void
.end method
