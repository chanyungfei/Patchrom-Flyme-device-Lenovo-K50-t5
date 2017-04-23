.class public Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;
.super Landroid/widget/FrameLayout;
.source "IndicatorLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static synthetic -com_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues:[I = null

.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x96


# instance fields
.field private mArrowImageView:Landroid/widget/ImageView;

.field private mInAnim:Landroid/view/animation/Animation;

.field private mOutAnim:Landroid/view/animation/Animation;

.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method private static synthetic -getcom_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->-com_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->-com_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues:[I

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
    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->-com_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9020093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 51
    .local v7, "arrowD":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9080096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 54
    .local v12, "padding":I
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v12, v12, v12, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 55
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->addView(Landroid/view/View;)V

    .line 58
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->-getcom_lenovo_component_pulltorefresh_library_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    :pswitch_0
    const v8, 0x905001b

    .line 73
    .local v8, "inAnimResId":I
    const v11, 0x905001d

    .line 74
    .local v11, "outAnimResId":I
    const v0, 0x9020095

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 78
    :goto_0
    invoke-static {p1, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    .line 79
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 81
    invoke-static {p1, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    .line 82
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 85
    .local v9, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 86
    const/high16 v6, 0x3f000000    # 0.5f

    .line 85
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 87
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 91
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 92
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 91
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 93
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 46
    return-void

    .line 60
    .end local v8    # "inAnimResId":I
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v11    # "outAnimResId":I
    :pswitch_1
    const v8, 0x905001a

    .line 61
    .restart local v8    # "inAnimResId":I
    const v11, 0x905001c

    .line 62
    .restart local v11    # "outAnimResId":I
    const v0, 0x9020094

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    .local v10, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v10, v2, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 68
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    return-void
.end method

.method public final isVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 101
    .local v0, "currentAnim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 102
    iget-object v3, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne v3, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 121
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->clearAnimation()V

    .line 118
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 130
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 135
    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    return-void
.end method

.method public releaseToRefresh()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 114
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    return-void
.end method
