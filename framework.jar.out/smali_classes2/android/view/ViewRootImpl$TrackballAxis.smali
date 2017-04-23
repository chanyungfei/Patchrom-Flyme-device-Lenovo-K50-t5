.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 4965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4991
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4992
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4965
    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 10
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    .prologue
    .line 5017
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_5

    .line 5018
    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v6, p1

    float-to-long v4, v6

    .line 5019
    .local v4, "normTime":J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v6, :cond_1

    .line 5020
    invoke-static {}, Landroid/view/ViewRootImpl;->-get9()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " reversed to positive!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    :cond_0
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5022
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 5023
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5024
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5026
    :cond_1
    const/4 v6, 0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 5044
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 5045
    iget-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v2, p2, v6

    .line 5046
    .local v2, "delta":J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5047
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5048
    .local v0, "acc":F
    cmp-long v6, v2, v4

    if-gez v6, :cond_a

    .line 5050
    sub-long v6, v4, v2

    long-to-float v6, v6

    const v7, 0x3ccccccd    # 0.025f

    mul-float v1, v6, v7

    .line 5051
    .local v1, "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_2

    mul-float/2addr v0, v1

    .line 5052
    :cond_2
    invoke-static {}, Landroid/view/ViewRootImpl;->-get9()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " accelerate: off="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5053
    const-string/jumbo v8, " normTime="

    .line 5052
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5053
    const-string/jumbo v8, " delta="

    .line 5052
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5054
    const-string/jumbo v8, " scale="

    .line 5052
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5054
    const-string/jumbo v8, " acc="

    .line 5052
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    :cond_3
    const/high16 v6, 0x41a00000    # 20.0f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_9

    .end local v0    # "acc":F
    :goto_1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5066
    .end local v1    # "scale":F
    .end local v2    # "delta":J
    :cond_4
    :goto_2
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v6, p1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5067
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    return v6

    .line 5027
    .end local v4    # "normTime":J
    :cond_5
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_8

    .line 5028
    neg-float v6, p1

    const/high16 v7, 0x43160000    # 150.0f

    mul-float/2addr v6, v7

    float-to-long v4, v6

    .line 5029
    .restart local v4    # "normTime":J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v6, :cond_7

    .line 5030
    invoke-static {}, Landroid/view/ViewRootImpl;->-get9()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " reversed to negative!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    :cond_6
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5032
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 5033
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5034
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5036
    :cond_7
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto/16 :goto_0

    .line 5038
    .end local v4    # "normTime":J
    :cond_8
    const-wide/16 v4, 0x0

    .restart local v4    # "normTime":J
    goto/16 :goto_0

    .line 5055
    .restart local v0    # "acc":F
    .restart local v1    # "scale":F
    .restart local v2    # "delta":J
    :cond_9
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_1

    .line 5058
    .end local v1    # "scale":F
    :cond_a
    sub-long v6, v2, v4

    long-to-float v6, v6

    const v7, 0x3ccccccd    # 0.025f

    mul-float v1, v6, v7

    .line 5059
    .restart local v1    # "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_b

    div-float/2addr v0, v1

    .line 5060
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->-get9()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string/jumbo v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " deccelerate: off="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5061
    const-string/jumbo v8, " normTime="

    .line 5060
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5061
    const-string/jumbo v8, " delta="

    .line 5060
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5062
    const-string/jumbo v8, " scale="

    .line 5060
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5062
    const-string/jumbo v8, " acc="

    .line 5060
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5063
    :cond_c
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_d

    .end local v0    # "acc":F
    :goto_3
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto/16 :goto_2

    .restart local v0    # "acc":F
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method generate()I
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 5079
    const/4 v2, 0x0

    .line 5080
    .local v2, "movement":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5082
    :goto_0
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    .line 5083
    .local v1, "dir":I
    :goto_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v3, :pswitch_data_0

    .line 5115
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 5116
    return v2

    .line 5082
    .end local v1    # "dir":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "dir":I
    goto :goto_1

    .line 5088
    :pswitch_0
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 5089
    return v2

    .line 5091
    :cond_1
    add-int/2addr v2, v1

    .line 5092
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5093
    const/4 v3, 0x1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 5099
    :pswitch_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    .line 5100
    return v2

    .line 5102
    :cond_2
    add-int/2addr v2, v1

    .line 5103
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5104
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5105
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 5118
    :cond_3
    add-int/2addr v2, v1

    .line 5119
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5120
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5121
    .local v0, "acc":F
    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v3

    .line 5122
    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    .end local v0    # "acc":F
    :goto_2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_0

    .restart local v0    # "acc":F
    :cond_4
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_2

    .line 5083
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .param p1, "_step"    # I

    .prologue
    .line 4998
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4999
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5000
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5001
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 5002
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4997
    return-void
.end method
