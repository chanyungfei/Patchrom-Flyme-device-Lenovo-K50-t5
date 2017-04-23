.class final Landroid/widget/NumberPicker$TextColorHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextColorHelper"
.end annotation


# static fields
.field public static final mCurrentColor:I = -0x979798


# instance fields
.field public mColors:[I

.field public final mFocusColor:I

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/widget/NumberPicker;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/NumberPicker;
    .param p2, "accentColor"    # I

    .prologue
    .line 3016
    iput-object p1, p0, Landroid/widget/NumberPicker$TextColorHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3012
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    .line 3017
    iput p2, p0, Landroid/widget/NumberPicker$TextColorHelper;->mFocusColor:I

    .line 3018
    invoke-direct {p0}, Landroid/widget/NumberPicker$TextColorHelper;->generateColorArray()V

    .line 3016
    return-void
.end method

.method private generateColorArray()V
    .locals 8

    .prologue
    .line 3025
    const/16 v0, 0x14

    .line 3026
    .local v0, "arrayItemCount":I
    const/16 v1, 0x13

    .line 3027
    .local v1, "divisionCount":I
    const v4, -0x787879

    .line 3029
    .local v4, "normalTextColor":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0x14

    if-ge v2, v5, :cond_0

    .line 3030
    int-to-float v5, v2

    const v6, 0x3d579436

    mul-float v3, v6, v5

    .line 3031
    .local v3, "interpolateRate":F
    iget-object v5, p0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    iget v6, p0, Landroid/widget/NumberPicker$TextColorHelper;->mFocusColor:I

    const v7, -0x787879

    invoke-direct {p0, v7, v6, v3}, Landroid/widget/NumberPicker$TextColorHelper;->getInterpolatedColor(IIF)I

    move-result v6

    aput v6, v5, v2

    .line 3029
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3024
    .end local v3    # "interpolateRate":F
    :cond_0
    return-void
.end method

.method private getInterpolatedColor(IIF)I
    .locals 16
    .param p1, "srcColorAsZero"    # I
    .param p2, "srcColorAsOne"    # I
    .param p3, "interpolateRate"    # F

    .prologue
    .line 3054
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, p3, v14

    if-gtz v14, :cond_0

    const/4 v14, 0x0

    cmpg-float v14, p3, v14

    if-gez v14, :cond_1

    .line 3055
    :cond_0
    const/high16 v14, -0x1000000

    return v14

    .line 3058
    :cond_1
    const/4 v9, 0x0

    .line 3060
    .local v9, "result":I
    const/high16 v14, -0x1000000

    and-int v14, v14, p1

    ushr-int/lit8 v1, v14, 0x18

    .line 3061
    .local v1, "baseAlpha":I
    const/high16 v14, 0xff0000

    and-int v14, v14, p1

    ushr-int/lit8 v4, v14, 0x10

    .line 3062
    .local v4, "baseRed":I
    const v14, 0xff00

    and-int v14, v14, p1

    ushr-int/lit8 v3, v14, 0x8

    .line 3063
    .local v3, "baseGreen":I
    move/from16 v0, p1

    and-int/lit16 v14, v0, 0xff

    ushr-int/lit8 v2, v14, 0x0

    .line 3065
    .local v2, "baseBlue":I
    const/high16 v14, -0x1000000

    and-int v14, v14, p2

    ushr-int/lit8 v14, v14, 0x18

    const/high16 v15, -0x1000000

    and-int v15, v15, p1

    ushr-int/lit8 v15, v15, 0x18

    sub-int v5, v14, v15

    .line 3066
    .local v5, "deltaAlpha":I
    const/high16 v14, 0xff0000

    and-int v14, v14, p2

    ushr-int/lit8 v14, v14, 0x10

    const/high16 v15, 0xff0000

    and-int v15, v15, p1

    ushr-int/lit8 v15, v15, 0x10

    sub-int v8, v14, v15

    .line 3067
    .local v8, "deltaRed":I
    const v14, 0xff00

    and-int v14, v14, p2

    ushr-int/lit8 v14, v14, 0x8

    const v15, 0xff00

    and-int v15, v15, p1

    ushr-int/lit8 v15, v15, 0x8

    sub-int v7, v14, v15

    .line 3068
    .local v7, "deltaGreen":I
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0xff

    ushr-int/lit8 v14, v14, 0x0

    move/from16 v0, p1

    and-int/lit16 v15, v0, 0xff

    ushr-int/lit8 v15, v15, 0x0

    sub-int v6, v14, v15

    .line 3070
    .local v6, "deltaBlue":I
    int-to-float v14, v1

    int-to-float v15, v5

    mul-float v15, v15, p3

    add-float/2addr v14, v15

    float-to-int v10, v14

    .line 3071
    .local v10, "resultAlpha":I
    int-to-float v14, v4

    int-to-float v15, v8

    mul-float v15, v15, p3

    add-float/2addr v14, v15

    float-to-int v13, v14

    .line 3072
    .local v13, "resultRed":I
    int-to-float v14, v3

    int-to-float v15, v7

    mul-float v15, v15, p3

    add-float/2addr v14, v15

    float-to-int v12, v14

    .line 3073
    .local v12, "resultGreen":I
    int-to-float v14, v2

    int-to-float v15, v6

    mul-float v15, v15, p3

    add-float/2addr v14, v15

    float-to-int v11, v14

    .line 3075
    .local v11, "resultBlue":I
    shl-int/lit8 v14, v10, 0x18

    shl-int/lit8 v15, v13, 0x10

    or-int/2addr v14, v15

    shl-int/lit8 v15, v12, 0x8

    or-int/2addr v14, v15

    shl-int/lit8 v15, v11, 0x0

    or-int v9, v14, v15

    .line 3076
    return v9
.end method
