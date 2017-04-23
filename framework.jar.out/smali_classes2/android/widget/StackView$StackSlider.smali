.class Landroid/widget/StackView$StackSlider;
.super Ljava/lang/Object;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackSlider"
.end annotation


# static fields
.field static final BEGINNING_OF_STACK_MODE:I = 0x1

.field static final END_OF_STACK_MODE:I = 0x2

.field static final NORMAL_MODE:I


# instance fields
.field mMode:I

.field mView:Landroid/view/View;

.field mXProgress:F

.field mYProgress:F

.field final synthetic this$0:Landroid/widget/StackView;


# direct methods
.method public constructor <init>(Landroid/widget/StackView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/StackView;

    .prologue
    .line 997
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 997
    return-void
.end method

.method public constructor <init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "copy"    # Landroid/widget/StackView$StackSlider;

    .prologue
    .line 1000
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 1001
    iget-object v0, p2, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 1002
    iget v0, p2, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 1003
    iget v0, p2, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 1004
    iget v0, p2, Landroid/widget/StackView$StackSlider;->mMode:I

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 1000
    return-void
.end method

.method private cubic(F)F
    .locals 5
    .param p1, "r"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1008
    mul-float v0, v4, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    div-float/2addr v0, v4

    return v0
.end method

.method private getDuration(ZF)F
    .locals 10
    .param p1, "invert"    # Z
    .param p2, "velocity"    # F

    .prologue
    const/high16 v9, 0x43c80000    # 400.0f

    const/4 v8, 0x0

    .line 1140
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 1141
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/StackView$LayoutParams;

    .line 1143
    .local v3, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget v4, v3, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    int-to-double v4, v4

    iget v6, v3, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 1144
    .local v0, "d":F
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v6}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 1146
    .local v2, "maxd":F
    cmpl-float v4, p2, v8

    if-nez v4, :cond_1

    .line 1147
    if-eqz p1, :cond_0

    div-float v4, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    :goto_0
    mul-float/2addr v4, v9

    return v4

    :cond_0
    div-float v4, v0, v2

    goto :goto_0

    .line 1149
    :cond_1
    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v1, v0, v4

    .line 1151
    .local v1, "duration":F
    :goto_1
    const/high16 v4, 0x42480000    # 50.0f

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_2

    .line 1152
    cmpl-float v4, v1, v9

    if-lez v4, :cond_4

    .line 1153
    :cond_2
    invoke-direct {p0, p1, v8}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v4

    return v4

    .line 1150
    .end local v1    # "duration":F
    :cond_3
    sub-float v4, v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v1, v4, v5

    .restart local v1    # "duration":F
    goto :goto_1

    .line 1155
    :cond_4
    return v1

    .line 1159
    .end local v0    # "d":F
    .end local v1    # "duration":F
    .end local v2    # "maxd":F
    .end local v3    # "viewLp":Landroid/widget/StackView$LayoutParams;
    :cond_5
    return v8
.end method

.method private highlightAlphaInterpolator(F)F
    .locals 3
    .param p1, "r"    # F

    .prologue
    const v2, 0x3f59999a    # 0.85f

    const v1, 0x3ecccccd    # 0.4f

    .line 1013
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1014
    div-float v0, p1, v1

    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result v0

    mul-float/2addr v0, v2

    return v0

    .line 1016
    :cond_0
    sub-float v0, p1, v1

    const v1, 0x3f19999a    # 0.6f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result v0

    mul-float/2addr v0, v2

    return v0
.end method

.method private rotationInterpolator(F)F
    .locals 2
    .param p1, "r"    # F

    .prologue
    const v1, 0x3e4ccccd    # 0.2f

    .line 1031
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1032
    const/4 v0, 0x0

    return v0

    .line 1034
    :cond_0
    sub-float v0, p1, v1

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    return v0
.end method

.method private viewAlphaInterpolator(F)F
    .locals 2
    .param p1, "r"    # F

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 1022
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 1023
    sub-float v0, p1, v1

    const v1, 0x3f333333    # 0.7f

    div-float/2addr v0, v1

    return v0

    .line 1025
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getDurationForNeutralPosition()F
    .locals 2

    .prologue
    .line 1124
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForNeutralPosition(F)F
    .locals 1
    .param p1, "velocity"    # F

    .prologue
    .line 1132
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition()F
    .locals 2

    .prologue
    .line 1128
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition(F)F
    .locals 1
    .param p1, "velocity"    # F

    .prologue
    .line 1136
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method public getXProgress()F
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    return v0
.end method

.method public getYProgress()F
    .locals 1

    .prologue
    .line 1165
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    return v0
.end method

.method setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1120
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 1119
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1039
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 1038
    return-void
.end method

.method public setXProgress(F)V
    .locals 3
    .param p1, "r"    # F

    .prologue
    .line 1105
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1106
    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1108
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 1110
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v2, :cond_0

    return-void

    .line 1111
    :cond_0
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1112
    .local v1, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 1114
    .local v0, "highlightLp":Landroid/widget/StackView$LayoutParams;
    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v2

    .line 1115
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1116
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1103
    return-void
.end method

.method public setYProgress(F)V
    .locals 11
    .param p1, "r"    # F

    .prologue
    const v10, 0x3e4ccccd    # 0.2f

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1044
    invoke-static {v8, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1045
    invoke-static {v7, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1047
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 1048
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    return-void

    .line 1050
    :cond_0
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/StackView$LayoutParams;

    .line 1051
    .local v3, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1053
    .local v1, "highlightLp":Landroid/widget/StackView$LayoutParams;
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-get2(Landroid/widget/StackView;)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 1057
    .local v2, "stackDirection":I
    :goto_0
    iget v4, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v8, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1058
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    move-result v4

    if-nez v4, :cond_1

    .line 1059
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1067
    :cond_1
    :goto_1
    iget v4, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 1042
    :goto_2
    return-void

    .line 1053
    .end local v2    # "stackDirection":I
    :cond_2
    const/4 v2, -0x1

    .restart local v2    # "stackDirection":I
    goto :goto_0

    .line 1062
    :cond_3
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1063
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 1069
    :pswitch_0
    neg-float v4, p1

    int-to-float v5, v2

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1070
    neg-float v4, p1

    int-to-float v5, v2

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1071
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1073
    sub-float v4, v8, p1

    invoke-direct {p0, v4}, Landroid/widget/StackView$StackSlider;->viewAlphaInterpolator(F)F

    move-result v0

    .line 1077
    .local v0, "alpha":F
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v7

    if-nez v4, :cond_5

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1078
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    :cond_4
    :goto_3
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1085
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    int-to-float v5, v2

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float/2addr v5, v6

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotationX(F)V

    .line 1086
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    int-to-float v5, v2

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float/2addr v5, v6

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotationX(F)V

    goto/16 :goto_2

    .line 1079
    :cond_5
    cmpl-float v4, v0, v7

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_4

    .line 1080
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 1081
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1089
    .end local v0    # "alpha":F
    :pswitch_1
    mul-float/2addr p1, v10

    .line 1090
    neg-int v4, v2

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1091
    neg-int v4, v2

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1092
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    .line 1095
    :pswitch_2
    sub-float v4, v8, p1

    mul-float p1, v4, v10

    .line 1096
    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1097
    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1098
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    .line 1067
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
