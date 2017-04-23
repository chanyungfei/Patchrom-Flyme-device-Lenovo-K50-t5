.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$StackFrame;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$HolographicHelper;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_MOTION:Z = false

.field private static final DBG_SHOW:Z = false

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final NUM_ACTIVE_VIEWS:I = 0x5

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

.field private mAnimatedStackSliderIndex:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/StackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/StackView;)I
    .locals 1

    iget v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/StackView;)I
    .locals 1

    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 177
    const v0, 0x101043e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 183
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

    .line 191
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const-string/jumbo v1, "StackView"

    iput-object v1, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    .line 137
    iput v4, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 138
    iput v4, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 144
    iput-boolean v4, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 151
    iput-boolean v4, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 153
    iput-boolean v4, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 154
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 163
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/widget/StackView$StackSlider;

    iput-object v1, p0, Landroid/widget/StackView;->mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

    .line 164
    iput v4, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    .line 193
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    .line 192
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mResOutColor:I

    .line 198
    const/4 v1, 0x1

    .line 197
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mClickColor:I

    .line 200
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    .line 190
    return-void
.end method

.method private beginGestureIfNeeded(F)V
    .locals 12
    .param p1, "deltaY"    # F

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 723
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Landroid/widget/StackView;->mTouchSlop:I

    if-le v9, v10, :cond_13

    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v9, :cond_13

    .line 724
    const/4 v9, 0x0

    cmpg-float v9, p1, v9

    if-gez v9, :cond_0

    const/4 v5, 0x1

    .line 725
    .local v5, "swipeGestureType":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    .line 726
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 728
    iget-object v9, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v9, :cond_1

    return-void

    .line 724
    .end local v5    # "swipeGestureType":I
    :cond_0
    const/4 v5, 0x2

    .restart local v5    # "swipeGestureType":I
    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v1

    .line 732
    .local v1, "adapterCount":I
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_5

    .line 733
    if-ne v5, v11, :cond_4

    const/4 v0, 0x0

    .line 738
    .local v0, "activeIndex":I
    :goto_1
    iget-boolean v9, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v9, :cond_9

    if-ne v1, v7, :cond_9

    .line 739
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_7

    if-ne v5, v7, :cond_7

    const/4 v3, 0x1

    .line 741
    .local v3, "endOfStack":Z
    :goto_2
    iget-boolean v9, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v9, :cond_c

    if-ne v1, v7, :cond_c

    .line 742
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v9, v7, :cond_a

    if-ne v5, v7, :cond_a

    const/4 v2, 0x1

    .line 746
    .local v2, "beginningOfStack":Z
    :goto_3
    iget-boolean v9, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v9, :cond_2

    if-eqz v2, :cond_d

    .line 748
    :cond_2
    iget v9, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v9, v0

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    if-eqz v2, :cond_e

    .line 749
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 750
    const/4 v4, 0x1

    .line 757
    .local v4, "stackMode":I
    :goto_4
    if-nez v4, :cond_11

    :goto_5
    iput-boolean v7, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 759
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 760
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_12

    return-void

    .line 733
    .end local v0    # "activeIndex":I
    .end local v2    # "beginningOfStack":Z
    .end local v3    # "endOfStack":Z
    .end local v4    # "stackMode":I
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "activeIndex":I
    goto :goto_1

    .line 735
    .end local v0    # "activeIndex":I
    :cond_5
    if-ne v5, v11, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "activeIndex":I
    goto :goto_1

    .end local v0    # "activeIndex":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "activeIndex":I
    goto :goto_1

    .line 740
    :cond_7
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v9, v7, :cond_8

    if-ne v5, v11, :cond_8

    const/4 v3, 0x1

    .restart local v3    # "endOfStack":Z
    goto :goto_2

    .end local v3    # "endOfStack":Z
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "endOfStack":Z
    goto :goto_2

    .line 738
    .end local v3    # "endOfStack":Z
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "endOfStack":Z
    goto :goto_2

    .line 743
    :cond_a
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_b

    if-ne v5, v11, :cond_b

    const/4 v2, 0x1

    .restart local v2    # "beginningOfStack":Z
    goto :goto_3

    .end local v2    # "beginningOfStack":Z
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "beginningOfStack":Z
    goto :goto_3

    .line 741
    .end local v2    # "beginningOfStack":Z
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "beginningOfStack":Z
    goto :goto_3

    .line 746
    :cond_d
    if-nez v3, :cond_2

    .line 747
    const/4 v4, 0x0

    .line 746
    .restart local v4    # "stackMode":I
    goto :goto_4

    .line 751
    .end local v4    # "stackMode":I
    :cond_e
    iget v9, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v9, v0

    add-int/lit8 v10, v1, -0x1

    if-eq v9, v10, :cond_f

    if-eqz v3, :cond_10

    .line 752
    :cond_f
    const/4 v4, 0x2

    .restart local v4    # "stackMode":I
    goto :goto_4

    .line 754
    .end local v4    # "stackMode":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "stackMode":I
    goto :goto_4

    :cond_11
    move v7, v8

    .line 757
    goto :goto_5

    .line 762
    .restart local v6    # "v":Landroid/view/View;
    :cond_12
    invoke-direct {p0, v6, v4}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 772
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 773
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    .line 722
    .end local v0    # "activeIndex":I
    .end local v1    # "adapterCount":I
    .end local v2    # "beginningOfStack":Z
    .end local v3    # "endOfStack":Z
    .end local v4    # "stackMode":I
    .end local v5    # "swipeGestureType":I
    .end local v6    # "v":Landroid/view/View;
    :cond_13
    return-void
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 890
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 891
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 892
    .local v4, "newY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v9, v4, v9

    float-to-int v1, v9

    .line 893
    .local v1, "deltaY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 895
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 896
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    int-to-float v10, v10

    const/16 v11, 0x3e8

    invoke-virtual {v9, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 897
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 900
    :cond_0
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 901
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 902
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 905
    :cond_1
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    if-le v1, v9, :cond_4

    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 906
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_4

    .line 909
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 912
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_3

    .line 913
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 917
    :goto_0
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    .line 982
    :cond_2
    :goto_1
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 983
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 889
    return-void

    .line 915
    :cond_3
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0

    .line 918
    :cond_4
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    neg-int v9, v9

    if-ge v1, v9, :cond_6

    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 919
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_6

    .line 922
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 925
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_5

    .line 926
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 931
    :goto_2
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    goto :goto_1

    .line 928
    :cond_5
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_2

    .line 932
    :cond_6
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 935
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    :goto_3
    int-to-float v3, v9

    .line 936
    .local v3, "finalYProgress":F
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_9

    .line 937
    :cond_7
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 945
    .local v2, "duration":I
    :goto_4
    iget-object v9, p0, Landroid/widget/StackView;->mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

    iget v10, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    new-instance v11, Landroid/widget/StackView$StackSlider;

    iget-object v12, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v11, p0, v12}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    aput-object v11, v9, v10

    .line 946
    iget-object v9, p0, Landroid/widget/StackView;->mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

    iget v10, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    aget-object v0, v9, v10

    .line 947
    .local v0, "animationSlider":Landroid/widget/StackView$StackSlider;
    iget v9, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    const/4 v10, 0x4

    if-lt v9, v10, :cond_a

    .line 948
    const/4 v9, 0x0

    .line 947
    :goto_5
    iput v9, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    .line 949
    const-string/jumbo v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 950
    .local v8, "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 951
    .local v7, "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    .line 952
    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 951
    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 953
    .local v5, "pa":Landroid/animation/ObjectAnimator;
    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 954
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 955
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 935
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 939
    .restart local v3    # "finalYProgress":F
    :cond_9
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_4

    .line 948
    .restart local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    :cond_a
    iget v9, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 956
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    :cond_b
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 958
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    const/4 v9, 0x0

    :goto_6
    int-to-float v3, v9

    .line 960
    .restart local v3    # "finalYProgress":F
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_e

    .line 961
    :cond_c
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 969
    .restart local v2    # "duration":I
    :goto_7
    iget-object v9, p0, Landroid/widget/StackView;->mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

    iget v10, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    new-instance v11, Landroid/widget/StackView$StackSlider;

    iget-object v12, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v11, p0, v12}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    aput-object v11, v9, v10

    .line 970
    iget-object v9, p0, Landroid/widget/StackView;->mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

    iget v10, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    aget-object v0, v9, v10

    .line 971
    .restart local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    iget v9, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    const/4 v10, 0x4

    if-lt v9, v10, :cond_f

    .line 972
    const/4 v9, 0x0

    .line 971
    :goto_8
    iput v9, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    .line 974
    const-string/jumbo v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 975
    .restart local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 976
    .restart local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    .line 977
    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 976
    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 978
    .restart local v5    # "pa":Landroid/animation/ObjectAnimator;
    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 979
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 958
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_d
    const/4 v9, 0x1

    goto :goto_6

    .line 963
    .restart local v3    # "finalYProgress":F
    :cond_e
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_7

    .line 972
    .restart local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    :cond_f
    iget v9, p0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_8
.end method

.method private initStackView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 205
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v6}, Landroid/widget/StackView;->configureViewAnimator(II)V

    .line 206
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 208
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    .line 209
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    .line 210
    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 212
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    .line 213
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 216
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 217
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 219
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    new-instance v2, Landroid/widget/StackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v2, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    .line 223
    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v2, :cond_0

    .line 224
    new-instance v2, Landroid/widget/StackView$HolographicHelper;

    iget-object v3, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    .line 226
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->setClipChildren(Z)V

    .line 227
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->setClipToPadding(Z)V

    .line 232
    iput v6, p0, Landroid/widget/StackView;->mStackMode:I

    .line 235
    iput v5, p0, Landroid/widget/StackView;->mWhichChild:I

    .line 239
    iget-object v2, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 240
    .local v1, "density":F
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/StackView;->mFramePadding:I

    .line 204
    return-void
.end method

.method private measureChildren()V
    .locals 13

    .prologue
    .line 1222
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v5

    .line 1224
    .local v5, "count":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v10

    .line 1225
    .local v10, "measuredWidth":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v9

    .line 1227
    .local v9, "measuredHeight":I
    int-to-float v11, v10

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 1228
    iget v12, p0, Landroid/widget/StackView;->mPaddingLeft:I

    .line 1227
    sub-int/2addr v11, v12

    .line 1228
    iget v12, p0, Landroid/widget/StackView;->mPaddingRight:I

    .line 1227
    sub-int v4, v11, v12

    .line 1229
    .local v4, "childWidth":I
    int-to-float v11, v9

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 1230
    iget v12, p0, Landroid/widget/StackView;->mPaddingTop:I

    .line 1229
    sub-int/2addr v11, v12

    .line 1230
    iget v12, p0, Landroid/widget/StackView;->mPaddingBottom:I

    .line 1229
    sub-int v1, v11, v12

    .line 1232
    .local v1, "childHeight":I
    const/4 v8, 0x0

    .line 1233
    .local v8, "maxWidth":I
    const/4 v7, 0x0

    .line 1235
    .local v7, "maxHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 1236
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1237
    .local v0, "child":Landroid/view/View;
    const/high16 v11, -0x80000000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1238
    const/high16 v12, -0x80000000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1237
    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1240
    iget-object v11, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    iget-object v11, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    .line 1241
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1242
    .local v3, "childMeasuredWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1243
    .local v2, "childMeasuredHeight":I
    if-le v3, v8, :cond_0

    .line 1244
    move v8, v3

    .line 1246
    :cond_0
    if-le v2, v7, :cond_1

    .line 1247
    move v7, v2

    .line 1235
    .end local v2    # "childMeasuredHeight":I
    .end local v3    # "childMeasuredWidth":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1252
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    int-to-float v11, v10

    const v12, 0x3dcccccd    # 0.1f

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1253
    int-to-float v11, v9

    const v12, 0x3dcccccd    # 0.1f

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1256
    if-lez v8, :cond_3

    if-lez v5, :cond_3

    if-ge v8, v4, :cond_3

    .line 1257
    sub-int v11, v10, v8

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1260
    :cond_3
    if-lez v7, :cond_4

    if-lez v5, :cond_4

    if-ge v7, v1, :cond_4

    .line 1261
    sub-int v11, v9, v7

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1221
    :cond_4
    return-void
.end method

.method private onLayout()V
    .locals 3

    .prologue
    .line 618
    iget-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    if-nez v1, :cond_0

    .line 619
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 620
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 623
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 629
    .local v0, "newSlideAmount":I
    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    if-eq v1, v0, :cond_1

    .line 630
    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    .line 631
    int-to-float v1, v0

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    .line 634
    :cond_1
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    .line 635
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 637
    :cond_2
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 638
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 639
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 617
    :cond_3
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 847
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 848
    .local v5, "pointerId":I
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v5, v9, :cond_5

    .line 850
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    const/4 v1, 0x0

    .line 852
    .local v1, "activeViewIndex":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 853
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_1

    return-void

    .line 850
    .end local v1    # "activeViewIndex":I
    .end local v6    # "v":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "activeViewIndex":I
    goto :goto_0

    .line 859
    .restart local v6    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 860
    if-eq v2, v0, :cond_3

    .line 862
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 863
    .local v7, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 865
    .local v8, "y":F
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 866
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 867
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 868
    .local v3, "oldX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 871
    .local v4, "oldY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialY:F

    .line 872
    iget v9, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v10, v7, v3

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialX:F

    .line 874
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 875
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_2

    .line 876
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 879
    :cond_2
    return-void

    .line 859
    .end local v3    # "oldX":F
    .end local v4    # "oldY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 885
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 845
    .end local v1    # "activeViewIndex":I
    .end local v2    # "index":I
    .end local v6    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private pacedScroll(Z)V
    .locals 6
    .param p1, "up"    # Z

    .prologue
    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/StackView;->mLastScrollTime:J

    sub-long v0, v2, v4

    .line 665
    .local v0, "timeSinceLastScroll":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 666
    if-eqz p1, :cond_1

    .line 667
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 671
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    .line 663
    :cond_0
    return-void

    .line 669
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 418
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v2, p0, Landroid/widget/StackView;->mResOutColor:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 421
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 422
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 423
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 424
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 426
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_0
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .locals 20
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "animate"    # Z

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 353
    .local v3, "maxPerspectiveShiftY":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 361
    .local v2, "maxPerspectiveShiftX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mStackMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v17, v0

    sub-int v17, v17, p1

    add-int/lit8 p1, v17, -0x1

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 369
    :cond_0
    :goto_0
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 371
    .local v7, "r":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v7

    const/16 v18, 0x0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v8, v18, v17

    .line 373
    .local v8, "scale":F
    mul-float v6, v7, v3

    .line 374
    .local v6, "perspectiveTranslationY":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v8, v17

    .line 375
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f666666    # 0.9f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    .line 374
    mul-float v12, v17, v18

    .line 376
    .local v12, "scaleShiftCorrectionY":F
    add-float v14, v6, v12

    .line 378
    .local v14, "transY":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v7

    mul-float v5, v17, v2

    .line 379
    .local v5, "perspectiveTranslationX":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v8

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f666666    # 0.9f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    .line 379
    mul-float v11, v17, v18

    .line 381
    .local v11, "scaleShiftCorrectionX":F
    add-float v13, v5, v11

    .line 392
    .local v13, "transX":F
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, p2

    .line 393
    check-cast v17, Landroid/widget/StackView$StackFrame;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    .line 396
    :cond_1
    if-eqz p3, :cond_4

    .line 397
    const-string/jumbo v17, "translationX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v13, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 398
    .local v15, "translationX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "translationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v14, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 399
    .local v16, "translationY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "scaleX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 400
    .local v9, "scalePropX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "scaleY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 402
    .local v10, "scalePropY":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    .line 403
    const/16 v18, 0x2

    aput-object v16, v17, v18

    const/16 v18, 0x3

    aput-object v15, v17, v18

    .line 402
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 404
    .local v4, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x64

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 406
    check-cast p2, Landroid/widget/StackView$StackFrame;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 408
    :cond_2
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 351
    .end local v4    # "oa":Landroid/animation/ObjectAnimator;
    .end local v9    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "translationY":Landroid/animation/PropertyValuesHolder;
    :goto_1
    return-void

    .line 365
    .end local v5    # "perspectiveTranslationX":F
    .end local v6    # "perspectiveTranslationY":F
    .end local v7    # "r":F
    .end local v8    # "scale":F
    .end local v11    # "scaleShiftCorrectionX":F
    .end local v12    # "scaleShiftCorrectionY":F
    .end local v13    # "transX":F
    .end local v14    # "transY":F
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 366
    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 410
    .restart local v5    # "perspectiveTranslationX":F
    .restart local v6    # "perspectiveTranslationY":F
    .restart local v7    # "r":F
    .restart local v8    # "scale":F
    .restart local v11    # "scaleShiftCorrectionX":F
    .restart local v12    # "scaleShiftCorrectionY":F
    .restart local v13    # "transX":F
    .restart local v14    # "transY":F
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 411
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 412
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 413
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1
.end method

.method private updateChildTransforms()V
    .locals 3

    .prologue
    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 522
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 523
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 524
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 521
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 8

    .prologue
    .line 1209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    sub-long v2, v4, v6

    .line 1211
    .local v2, "timeSinceLastInteraction":J
    iget-object v1, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_0

    return-void

    .line 1212
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v0

    .line 1213
    .local v0, "adapterCount":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v1, :cond_1

    return-void

    .line 1215
    :cond_1
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v1, :cond_2

    .line 1216
    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 1217
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 1208
    :cond_2
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .prologue
    .line 578
    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1175
    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1176
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1177
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/StackView$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1178
    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1179
    .local v1, "lp":Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1180
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1181
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1182
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1183
    return-object v1

    .line 1185
    .end local v1    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v2, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    return-object v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 583
    const/4 v3, 0x0

    .line 585
    .local v3, "expandClipRegion":Z
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 586
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    .line 592
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 593
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 594
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 595
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v6, :cond_3

    iget v6, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-nez v6, :cond_3

    .line 597
    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    .line 599
    :cond_1
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 600
    .local v2, "childInvalidateRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 601
    const/4 v3, 0x1

    .line 602
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 592
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 596
    .end local v2    # "childInvalidateRect":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 607
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_4
    if-eqz v3, :cond_5

    .line 608
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 609
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 610
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 611
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 582
    :goto_2
    return-void

    .line 613
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1319
    const-class v0, Landroid/widget/StackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 5

    .prologue
    .line 570
    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 571
    .local v0, "fl":Landroid/widget/StackView$StackFrame;
    iget v1, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v4, p0, Landroid/widget/StackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    .line 572
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 516
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 515
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 659
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 648
    :pswitch_0
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 649
    .local v0, "vscroll":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    .line 650
    invoke-direct {p0, v4}, Landroid/widget/StackView;->pacedScroll(Z)V

    .line 651
    return v2

    .line 652
    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 653
    invoke-direct {p0, v2}, Landroid/widget/StackView;->pacedScroll(Z)V

    .line 654
    return v2

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1325
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1326
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1327
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1329
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1331
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_1

    .line 1332
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1324
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1326
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 681
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 715
    :cond_0
    :goto_0
    :pswitch_0
    const-string/jumbo v5, "StackView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onInterceptTouchEvent end: action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    const-string/jumbo v7, ", y = "

    .line 715
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 715
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    const-string/jumbo v7, ", mSwipeGestureType = "

    .line 715
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    iget v7, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 715
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 683
    :pswitch_1
    iget v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/widget/StackView;->mInitialX:F

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/StackView;->mInitialY:F

    .line 686
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    goto :goto_0

    .line 691
    :pswitch_2
    iget v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 692
    .local v3, "pointerIndex":I
    if-ne v3, v6, :cond_2

    .line 694
    const-string/jumbo v5, "StackView"

    const-string/jumbo v6, "Error: No data for our primary pointer."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return v4

    .line 697
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 698
    .local v2, "newY":F
    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v1, v2, v5

    .line 700
    .local v1, "deltaY":F
    invoke-direct {p0, v1}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    goto :goto_0

    .line 704
    .end local v1    # "deltaY":F
    .end local v2    # "newY":F
    .end local v3    # "pointerIndex":I
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 709
    :pswitch_4
    iput v6, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 710
    iput v4, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto/16 :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1190
    invoke-virtual {p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    .line 1192
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v2

    .line 1193
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1194
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1196
    .local v0, "child":Landroid/view/View;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v6, v7

    .line 1197
    .local v3, "childRight":I
    iget v6, p0, Landroid/widget/StackView;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v1, v6, v7

    .line 1198
    .local v1, "childBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 1200
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    iget v7, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v7, v8

    .line 1201
    iget v8, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v9, v1

    .line 1200
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1193
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1204
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    invoke-direct {p0}, Landroid/widget/StackView;->onLayout()V

    .line 1189
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x1000000

    const/4 v8, -0x1

    const/high16 v10, -0x80000000

    const v9, 0x40071c72

    .line 1267
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1268
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1269
    .local v3, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1270
    .local v5, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1272
    .local v2, "heightSpecMode":I
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    if-eq v7, v8, :cond_2

    iget v7, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    if-eq v7, v8, :cond_2

    const/4 v0, 0x1

    .line 1277
    .local v0, "haveChildRefSize":Z
    :goto_0
    if-nez v2, :cond_4

    .line 1278
    if-eqz v0, :cond_3

    .line 1279
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1280
    iget v8, p0, Landroid/widget/StackView;->mPaddingTop:I

    .line 1279
    add-int/2addr v7, v8

    .line 1280
    iget v8, p0, Landroid/widget/StackView;->mPaddingBottom:I

    .line 1279
    add-int v3, v7, v8

    .line 1297
    :cond_0
    :goto_1
    if-nez v5, :cond_8

    .line 1298
    if-eqz v0, :cond_7

    .line 1299
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1300
    iget v8, p0, Landroid/widget/StackView;->mPaddingLeft:I

    .line 1299
    add-int/2addr v7, v8

    .line 1300
    iget v8, p0, Landroid/widget/StackView;->mPaddingRight:I

    .line 1299
    add-int v6, v7, v8

    .line 1313
    :cond_1
    :goto_2
    invoke-virtual {p0, v6, v3}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    .line 1314
    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    .line 1266
    return-void

    .line 1272
    .end local v0    # "haveChildRefSize":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "haveChildRefSize":Z
    goto :goto_0

    .line 1280
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1281
    :cond_4
    if-ne v2, v10, :cond_0

    .line 1282
    if-eqz v0, :cond_6

    .line 1283
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1284
    iget v8, p0, Landroid/widget/StackView;->mPaddingTop:I

    .line 1283
    add-int/2addr v7, v8

    .line 1284
    iget v8, p0, Landroid/widget/StackView;->mPaddingBottom:I

    .line 1283
    add-int v1, v7, v8

    .line 1285
    .local v1, "height":I
    if-gt v1, v3, :cond_5

    .line 1286
    move v3, v1

    goto :goto_1

    .line 1288
    :cond_5
    or-int/2addr v3, v11

    goto :goto_1

    .line 1292
    .end local v1    # "height":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1300
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1301
    :cond_8
    if-ne v2, v10, :cond_1

    .line 1302
    if-eqz v0, :cond_a

    .line 1303
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int v4, v7, v8

    .line 1304
    .local v4, "width":I
    if-gt v4, v6, :cond_9

    .line 1305
    move v6, v4

    goto :goto_2

    .line 1307
    :cond_9
    or-int/2addr v6, v11

    goto :goto_2

    .line 1310
    .end local v4    # "width":I
    :cond_a
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    .line 782
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 785
    .local v0, "action":I
    iget v8, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 786
    .local v5, "pointerIndex":I
    if-ne v5, v9, :cond_0

    .line 788
    const-string/jumbo v8, "StackView"

    const-string/jumbo v9, "Error: No data for our primary pointer."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return v12

    .line 792
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 793
    .local v4, "newY":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 794
    .local v3, "newX":F
    iget v8, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v2, v4, v8

    .line 795
    .local v2, "deltaY":F
    iget v8, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v1, v3, v8

    .line 796
    .local v1, "deltaX":F
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    .line 797
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 799
    :cond_1
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 806
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 842
    :cond_2
    :goto_0
    :pswitch_0
    return v11

    .line 808
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 810
    iget v8, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    div-float v7, v1, v8

    .line 811
    .local v7, "rx":F
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 812
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    sub-float v8, v2, v8

    iget v9, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v6, v8, v10

    .line 813
    .local v6, "r":F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v8, v11, :cond_3

    sub-float v6, v10, v6

    .line 814
    :cond_3
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float v9, v10, v6

    invoke-virtual {v8, v9}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 815
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 816
    return v11

    .line 817
    .end local v6    # "r":F
    :cond_4
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v8, v11, :cond_2

    .line 818
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    add-float/2addr v8, v2

    neg-float v8, v8

    iget v9, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v6, v8, v10

    .line 819
    .restart local v6    # "r":F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v8, v11, :cond_5

    sub-float v6, v10, v6

    .line 820
    :cond_5
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v6}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 821
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 822
    return v11

    .line 827
    .end local v6    # "r":F
    .end local v7    # "rx":F
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 831
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 836
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 837
    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 838
    iput v12, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1340
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    return v3

    .line 1343
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1344
    return v2

    .line 1346
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1360
    return v2

    .line 1348
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 1349
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 1350
    return v3

    .line 1352
    :cond_2
    return v2

    .line 1354
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_3

    .line 1355
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 1356
    return v3

    .line 1358
    :cond_3
    return v2

    .line 1346
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public showNext()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 438
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v1, :cond_0

    return-void

    .line 439
    :cond_0
    iget-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1

    .line 440
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 442
    invoke-direct {p0, v0, v3}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 443
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 444
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 447
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 437
    return-void
.end method

.method showOnly(IZ)V
    .locals 8
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v7, 0x0

    .line 470
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 472
    const-string/jumbo v4, "StackView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showOnly: childIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",mCurrentWindowStart = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 473
    iget v6, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 473
    const-string/jumbo v6, ",mCurrentWindowEnd = "

    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 473
    iget v6, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 474
    const-string/jumbo v6, ",mWhichChild = "

    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 474
    iget v6, p0, Landroid/widget/StackView;->mWhichChild:I

    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 474
    const-string/jumbo v6, ",mHighlight = "

    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 474
    iget-object v6, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget v0, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    if-lt v0, v4, :cond_1

    .line 479
    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/StackView;->modulo(II)I

    move-result v1

    .line 480
    .local v1, "index":I
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 481
    .local v3, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_0

    .line 482
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 483
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 478
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 486
    .end local v1    # "index":I
    .end local v3    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 487
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 489
    :cond_2
    iput-boolean v7, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 490
    iput-boolean v7, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 469
    return-void
.end method

.method public showPrevious()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 456
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v1, :cond_0

    return-void

    .line 457
    :cond_0
    iget-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1

    .line 458
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 459
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 460
    invoke-direct {p0, v0, v2}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 461
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 462
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 465
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    .line 455
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    .line 509
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 511
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 507
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .prologue
    .line 253
    if-nez p4, :cond_0

    move-object/from16 v13, p3

    .line 254
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 255
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 257
    .local v6, "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 258
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 261
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 262
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 263
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 346
    :cond_1
    :goto_0
    const/4 v13, -0x1

    move/from16 v0, p2

    if-eq v0, v13, :cond_2

    .line 347
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 246
    :cond_2
    return-void

    .line 265
    :cond_3
    if-nez p1, :cond_6

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_6

    move-object/from16 v13, p3

    .line 267
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 268
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 274
    .local v5, "duration":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    new-instance v15, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    aput-object v15, v13, v14

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    aget-object v4, v13, v14

    .line 276
    .local v4, "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    const/4 v14, 0x4

    if-lt v13, v14, :cond_4

    .line 277
    const/4 v13, 0x0

    .line 276
    :goto_1
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    .line 278
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 280
    if-eqz p4, :cond_5

    .line 281
    const-string/jumbo v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 282
    .local v9, "slideInY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 283
    .local v8, "slideInX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    .line 284
    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    .line 283
    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 285
    .local v7, "slideIn":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 286
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 287
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13, v7}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 288
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 277
    .end local v7    # "slideIn":Landroid/animation/ObjectAnimator;
    .end local v8    # "slideInX":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "slideInY":Landroid/animation/PropertyValuesHolder;
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 290
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 291
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 293
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_6
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_9

    if-nez p2, :cond_9

    move-object/from16 v13, p3

    .line 295
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 301
    .restart local v5    # "duration":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    new-instance v15, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    aput-object v15, v13, v14

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mAnimatedStackSlider:[Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    aget-object v4, v13, v14

    .line 303
    .restart local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    const/4 v14, 0x4

    if-lt v13, v14, :cond_7

    .line 304
    const/4 v13, 0x0

    .line 303
    :goto_2
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    .line 305
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 306
    if-eqz p4, :cond_8

    .line 307
    const-string/jumbo v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 308
    .local v12, "slideOutY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 309
    .local v11, "slideOutX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    .line 310
    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    .line 309
    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 311
    .local v10, "slideOut":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 312
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 313
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13, v10}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 314
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 304
    .end local v10    # "slideOut":Landroid/animation/ObjectAnimator;
    .end local v11    # "slideOutX":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "slideOutY":Landroid/animation/PropertyValuesHolder;
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/StackView;->mAnimatedStackSliderIndex:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 316
    :cond_8
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 317
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 319
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_9
    if-nez p2, :cond_a

    .line 321
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 322
    const/4 v13, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 323
    :cond_a
    if-eqz p1, :cond_b

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_c

    :cond_b
    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_c

    .line 324
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 325
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 326
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 328
    .restart local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 329
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    goto/16 :goto_0

    .line 330
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_c
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_d

    .line 331
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 332
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 333
    :cond_d
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1

    .line 334
    if-eqz p4, :cond_e

    .line 335
    new-instance v13, Landroid/widget/StackView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    .line 339
    const-wide/16 v14, 0x64

    .line 335
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Landroid/widget/StackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 341
    :cond_e
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method updateClickFeedback()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 494
    iget-boolean v1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    if-nez v1, :cond_1

    .line 495
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 498
    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v3, p0, Landroid/widget/StackView;->mClickColor:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 497
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 499
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 500
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 502
    :cond_0
    iput-boolean v4, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 493
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
