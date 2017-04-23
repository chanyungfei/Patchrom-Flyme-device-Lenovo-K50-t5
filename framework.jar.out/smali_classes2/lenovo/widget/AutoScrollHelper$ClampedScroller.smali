.class Llenovo/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 743
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 744
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 745
    iput v2, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 746
    iput v2, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 741
    return-void
.end method

.method private getValueAt(J)F
    .locals 11
    .param p1, "currentTime"    # J

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 785
    iget-wide v4, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    .line 786
    return v8

    .line 787
    :cond_0
    iget-wide v4, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    iget-wide v4, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_2

    .line 788
    :cond_1
    iget-wide v4, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, p1, v4

    .line 789
    .local v2, "elapsedSinceStart":J
    long-to-float v4, v2

    iget v5, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v8, v9}, Llenovo/widget/AutoScrollHelper;->-wrap1(FFF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    return v4

    .line 791
    .end local v2    # "elapsedSinceStart":J
    :cond_2
    iget-wide v4, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    sub-long v0, p1, v4

    .line 792
    .local v0, "elapsedSinceEnd":J
    iget v4, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float v4, v9, v4

    iget v5, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 793
    long-to-float v6, v0

    iget v7, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6, v8, v9}, Llenovo/widget/AutoScrollHelper;->-wrap1(FFF)F

    move-result v6

    .line 792
    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    return v4
.end method

.method private interpolateValue(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 805
    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public computeScrollDelta()V
    .locals 10

    .prologue
    .line 816
    iget-wide v6, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 817
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Cannot compute scroll delta before calling start()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 820
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 821
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v5

    .line 822
    .local v5, "value":F
    invoke-direct {p0, v5}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v4

    .line 823
    .local v4, "scale":F
    iget-wide v6, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v2, v0, v6

    .line 825
    .local v2, "elapsedSinceDelta":J
    iput-wide v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 826
    long-to-float v6, v2

    mul-float/2addr v6, v4

    iget v7, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 827
    long-to-float v6, v2

    mul-float/2addr v6, v4

    iget v7, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 815
    return-void
.end method

.method public getDeltaX()I
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    return v0
.end method

.method public getDeltaY()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return v0
.end method

.method public getHorizontalDirection()I
    .locals 2

    .prologue
    .line 842
    iget v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iget v1, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getVerticalDirection()I
    .locals 2

    .prologue
    .line 846
    iget v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    iget v1, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 780
    iget-wide v2, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 781
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v1, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 780
    :cond_0
    return v0
.end method

.method public requestStop()V
    .locals 5

    .prologue
    .line 773
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 774
    .local v0, "currentTime":J
    iget-wide v2, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget v3, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Llenovo/widget/AutoScrollHelper;->-wrap2(III)I

    move-result v2

    iput v2, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 775
    invoke-direct {p0, v0, v1}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    iput v2, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 776
    iput-wide v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 772
    return-void
.end method

.method public setRampDownDuration(I)V
    .locals 0
    .param p1, "durationMillis"    # I

    .prologue
    .line 754
    iput p1, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 753
    return-void
.end method

.method public setRampUpDuration(I)V
    .locals 0
    .param p1, "durationMillis"    # I

    .prologue
    .line 750
    iput p1, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    .line 749
    return-void
.end method

.method public setTargetVelocity(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 837
    iput p1, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 838
    iput p2, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 836
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 761
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 762
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 763
    iget-wide v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 764
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 765
    iput v2, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 766
    iput v2, p0, Llenovo/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 760
    return-void
.end method
