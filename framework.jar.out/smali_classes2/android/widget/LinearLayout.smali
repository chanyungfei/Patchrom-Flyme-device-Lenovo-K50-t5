.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout.log"

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "Layout"

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4

.field private static sDebugLayout:Z


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/LinearLayout;->sDebugLayout:Z

    .line 80
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/LinearLayout;->DBG:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 133
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 141
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 178
    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 205
    iput v6, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 221
    invoke-direct {p0}, Landroid/widget/LinearLayout;->initLinearLayout()V

    .line 224
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    .line 223
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 226
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 227
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 228
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 231
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 232
    if-ltz v2, :cond_1

    .line 233
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 236
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 237
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_2

    .line 238
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 241
    :cond_2
    const/4 v3, 0x4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 244
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 243
    iput v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 246
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 248
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 250
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 252
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    return-void
.end method

.method private allViewsAreGoneBefore(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 679
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 680
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 681
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 682
    return v4

    .line 679
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 685
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1663
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 1664
    const/high16 v2, 0x40000000    # 2.0f

    .line 1663
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1665
    .local v4, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 1666
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1667
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1668
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1670
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1673
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1674
    .local v8, "oldWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1677
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1678
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1665
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldWidth":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1659
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1116
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 1117
    const/high16 v4, 0x40000000    # 2.0f

    .line 1116
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1118
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 1119
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1120
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 1121
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1123
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 1126
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1127
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 1130
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1131
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1118
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1114
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 397
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 398
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 400
    return-object v0

    .line 397
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 403
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method private initLinearLayout()V
    .locals 2

    .prologue
    .line 2253
    const-string/jumbo v0, "debug.layout.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/LinearLayout;->sDebugLayout:Z

    .line 2252
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 2001
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2000
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2104
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 408
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v3

    .line 409
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 410
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 413
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 416
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 421
    .local v5, "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 409
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_1

    .line 426
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 427
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    .line 429
    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 430
    if-eqz v3, :cond_4

    .line 431
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    .line 443
    .restart local v5    # "position":I
    :goto_2
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 406
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3
    return-void

    .line 433
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 436
    .end local v5    # "position":I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 437
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_6

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 440
    .end local v5    # "position":I
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    .line 367
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 368
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 370
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 371
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 373
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v5, v6, v7

    .line 374
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 367
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 380
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    .line 381
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 382
    .local v0, "bottom":I
    if-nez v1, :cond_3

    .line 383
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 388
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 365
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    .line 385
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 386
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 448
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 449
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 448
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 450
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 447
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 454
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 455
    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 454
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2115
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2116
    const-string/jumbo v0, "layout:baselineAligned"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2117
    const-string/jumbo v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2118
    const-string/jumbo v0, "measurement:baselineChildTop"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2119
    const-string/jumbo v0, "measurement:orientation"

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2120
    const-string/jumbo v0, "measurement:gravity"

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2121
    const-string/jumbo v0, "measurement:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2122
    const-string/jumbo v0, "layout:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2123
    const-string/jumbo v0, "layout:useLargestChild"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2114
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2086
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 2087
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 2088
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 2089
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2090
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 2092
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2073
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2096
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2074
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2097
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2109
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 516
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_0

    .line 517
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    return v5

    .line 520
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1

    .line 521
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 525
    :cond_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 528
    .local v1, "childBaseline":I
    if-ne v1, v7, :cond_3

    .line 529
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2

    .line 531
    return v7

    .line 535
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 545
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 547
    .local v2, "childTop":I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 548
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 549
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 550
    sparse-switch v4, :sswitch_data_0

    .line 563
    .end local v4    # "majorGravity":I
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 564
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    return v5

    .line 552
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "majorGravity":I
    :sswitch_0
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 553
    goto :goto_0

    .line 556
    :sswitch_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    .line 557
    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 556
    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 558
    goto :goto_0

    .line 550
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1693
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1735
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1747
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 2025
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 664
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 666
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result v0

    .line 667
    .local v0, "allViewsAreGoneBefore":Z
    if-eqz v0, :cond_3

    .line 669
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1

    .line 671
    :cond_3
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    :goto_2
    return v1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 30
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1877
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v20

    .line 1878
    .local v20, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v27, v0

    .line 1884
    .local v27, "paddingTop":I
    sub-int v18, p4, p2

    .line 1885
    .local v18, "height":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v18, v2

    .line 1888
    .local v10, "childBottom":I
    sub-int v2, v18, v27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v13, v2, v4

    .line 1890
    .local v13, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1892
    .local v14, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    .line 1893
    .local v23, "majorGravity":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v26, v2, 0x70

    .line 1895
    .local v26, "minorGravity":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1897
    .local v8, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v24, v0

    .line 1898
    .local v24, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v25, v0

    .line 1900
    .local v25, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v21

    .line 1901
    .local v21, "layoutDirection":I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1914
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 1918
    .local v12, "childLeft":I
    :goto_0
    const/16 v28, 0x0

    .line 1919
    .local v28, "start":I
    const/16 v16, 0x1

    .line 1921
    .local v16, "dir":I
    if-eqz v20, :cond_0

    .line 1922
    add-int/lit8 v28, v14, -0x1

    .line 1923
    const/16 v16, -0x1

    .line 1926
    :cond_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_7

    .line 1927
    mul-int v2, v16, v19

    add-int v11, v28, v2

    .line 1928
    .local v11, "childIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1930
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_2

    .line 1931
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    .line 1926
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1904
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childLeft":I
    .end local v16    # "dir":I
    .end local v19    # "i":I
    .end local v28    # "start":I
    :sswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v12, v2, v4

    .line 1905
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 1909
    .end local v12    # "childLeft":I
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v4, p3, p1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    .line 1910
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 1932
    .restart local v3    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v16    # "dir":I
    .restart local v19    # "i":I
    .restart local v28    # "start":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 1933
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1934
    .local v6, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1935
    .local v7, "childHeight":I
    const/4 v9, -0x1

    .line 1938
    .local v9, "childBaseline":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    .line 1940
    .local v22, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v8, :cond_3

    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 1941
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1944
    :cond_3
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 1945
    .local v17, "gravity":I
    if-gez v17, :cond_4

    .line 1946
    move/from16 v17, v26

    .line 1949
    :cond_4
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_1

    .line 1981
    move/from16 v5, v27

    .line 1985
    .local v5, "childTop":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1986
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v2

    .line 1989
    :cond_6
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    .line 1990
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1992
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    .line 1993
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .line 1992
    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1995
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_2

    .line 1951
    .end local v5    # "childTop":I
    :sswitch_2
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v5, v27, v2

    .line 1952
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1953
    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_3

    .line 1969
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    .line 1970
    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1969
    add-int/2addr v2, v4

    .line 1970
    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1969
    sub-int v5, v2, v4

    .line 1971
    .restart local v5    # "childTop":I
    goto :goto_3

    .line 1974
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1975
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1976
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    .line 1977
    .local v15, "descent":I
    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    goto :goto_3

    .line 1876
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v9    # "childBaseline":I
    .end local v11    # "childIndex":I
    .end local v15    # "descent":I
    .end local v17    # "gravity":I
    .end local v22    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    return-void

    .line 1901
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1949
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 21
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1772
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v18, v0

    .line 1778
    .local v18, "paddingLeft":I
    sub-int v19, p3, p1

    .line 1779
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v8, v19, v1

    .line 1782
    .local v8, "childRight":I
    sub-int v1, v19, v18

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v1, v4

    .line 1784
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1786
    .local v11, "count":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v16, v1, 0x70

    .line 1787
    .local v16, "majorGravity":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    .line 1789
    .local v17, "minorGravity":I
    sparse-switch v16, :sswitch_data_0

    .line 1802
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1806
    .local v10, "childTop":I
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 1807
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1808
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_1

    .line 1809
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1806
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1792
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "childTop":I
    .end local v13    # "i":I
    :sswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v1, v1, p4

    sub-int v1, v1, p2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v10, v1, v4

    .line 1793
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 1797
    .end local v10    # "childTop":I
    :sswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v4, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    .line 1798
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 1810
    .restart local v2    # "child":Landroid/view/View;
    .restart local v13    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 1811
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1812
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1815
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1817
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1818
    .local v12, "gravity":I
    if-gez v12, :cond_2

    .line 1819
    move/from16 v12, v17

    .line 1821
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v14

    .line 1822
    .local v14, "layoutDirection":I
    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 1823
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 1835
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v18, v1

    .line 1839
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1840
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v10, v1

    .line 1843
    :cond_3
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v1

    .line 1844
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1846
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    .line 1848
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_2

    .line 1825
    .end local v3    # "childLeft":I
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    .line 1826
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1825
    add-int/2addr v1, v4

    .line 1826
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1825
    sub-int v3, v1, v4

    .line 1827
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 1830
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1831
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 1771
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v12    # "gravity":I
    .end local v14    # "layoutDirection":I
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void

    .line 1789
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1823
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1723
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1722
    return-void
.end method

.method measureHorizontal(II)V
    .locals 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1149
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1150
    const/16 v36, 0x0

    .line 1151
    .local v36, "maxHeight":I
    const/16 v18, 0x0

    .line 1152
    .local v18, "childState":I
    const/4 v11, 0x0

    .line 1153
    .local v11, "alternativeMaxHeight":I
    const/16 v45, 0x0

    .line 1154
    .local v45, "weightedMaxHeight":I
    const/4 v10, 0x1

    .line 1155
    .local v10, "allFillParent":Z
    const/16 v42, 0x0

    .line 1157
    .local v42, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v20

    .line 1159
    .local v20, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v46

    .line 1160
    .local v46, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    .line 1162
    .local v26, "heightMode":I
    const/16 v32, 0x0

    .line 1163
    .local v32, "matchHeight":Z
    const/16 v40, 0x0

    .line 1165
    .local v40, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v3, :cond_1

    .line 1166
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1167
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1170
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v34, v0

    .line 1171
    .local v34, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v35, v0

    .line 1173
    .local v35, "maxDescent":[I
    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v34, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v34, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v34, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v34, v6

    .line 1174
    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v35, v6

    .line 1176
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1177
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v43, v0

    .line 1179
    .local v43, "useLargestChild":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v46

    if-ne v0, v3, :cond_3

    const/16 v28, 0x1

    .line 1181
    .local v28, "isExactly":Z
    :goto_0
    const/high16 v29, -0x80000000

    .line 1183
    .local v29, "largestChildWidth":I
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_2

    .line 1184
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Pass.1 (Horizontal), this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v5, v0, :cond_1a

    .line 1189
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1191
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_4

    .line 1192
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1188
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1179
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v28    # "isExactly":Z
    .end local v29    # "largestChildWidth":I
    :cond_3
    const/16 v28, 0x0

    .restart local v28    # "isExactly":Z
    goto :goto_0

    .line 1196
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v29    # "largestChildWidth":I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_5

    .line 1197
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1198
    goto :goto_2

    .line 1201
    :cond_5
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_6

    .line 1202
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Child in Pass1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1203
    const-string/jumbo v7, ", child="

    .line 1202
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1203
    const-string/jumbo v7, ", this="

    .line 1202
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1207
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1211
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1210
    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1213
    .local v30, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v42, v42, v3

    .line 1215
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v46

    if-ne v0, v3, :cond_f

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_f

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_f

    .line 1219
    if-eqz v28, :cond_c

    .line 1220
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1231
    :goto_3
    if-eqz v13, :cond_d

    .line 1233
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v6, 0x0

    .line 1232
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v24

    .line 1235
    .local v24, "freeWidthSpec":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v6, 0x0

    .line 1234
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v23

    .line 1236
    .local v23, "freeHeightSpec":I
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1238
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_8

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_8

    .line 1239
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass1-1-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1240
    const-string/jumbo v7, ", child="

    .line 1239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1240
    const-string/jumbo v7, ", this="

    .line 1239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1240
    const-string/jumbo v7, ", "

    .line 1239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1241
    const-string/jumbo v7, "status=Measured(BaselineAligned), mTotalLength="

    .line 1239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1241
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1242
    const-string/jumbo v7, ", totalWeight="

    .line 1239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    .end local v23    # "freeHeightSpec":I
    .end local v24    # "freeWidthSpec":I
    :cond_8
    :goto_4
    const/16 v33, 0x0

    .line 1306
    .local v33, "matchHeightLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-eq v0, v3, :cond_9

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_9

    .line 1310
    const/16 v32, 0x1

    .line 1311
    const/16 v33, 0x1

    .line 1314
    :cond_9
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v31, v3, v6

    .line 1315
    .local v31, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v31

    .line 1316
    .local v16, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1318
    if-eqz v13, :cond_a

    .line 1319
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1320
    .local v14, "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_a

    .line 1323
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_5
    and-int/lit8 v25, v3, 0x70

    .line 1325
    .local v25, "gravity":I
    shr-int/lit8 v3, v25, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v27, v3, 0x1

    .line 1328
    .local v27, "index":I
    aget v3, v34, v27

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v27

    .line 1329
    aget v3, v35, v27

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v27

    .line 1333
    .end local v14    # "childBaseline":I
    .end local v25    # "gravity":I
    .end local v27    # "index":I
    :cond_a
    move/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1335
    if-eqz v10, :cond_16

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_16

    const/4 v10, 0x1

    .line 1336
    :goto_6
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_18

    .line 1342
    if-eqz v33, :cond_17

    .line 1341
    .end local v31    # "margin":I
    :goto_7
    move/from16 v0, v45

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v45

    .line 1348
    :goto_8
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_b

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_b

    .line 1349
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1350
    const-string/jumbo v7, ", child="

    .line 1349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1350
    const-string/jumbo v7, ", this="

    .line 1349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1350
    const-string/jumbo v7, ", "

    .line 1349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1350
    const-string/jumbo v7, "maxHeight="

    .line 1349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1351
    const-string/jumbo v7, ", matchHeightLocally="

    .line 1349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1351
    const-string/jumbo v7, ", "

    .line 1349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1352
    const-string/jumbo v7, "weightedMaxHeight="

    .line 1349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1353
    const-string/jumbo v7, ", alternativeMaxHeight="

    .line 1349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_2

    .line 1222
    .end local v16    # "childHeight":I
    .end local v33    # "matchHeightLocally":Z
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v41, v0

    .line 1224
    .local v41, "totalLength":I
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1223
    add-int v3, v3, v41

    .line 1224
    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1223
    add-int/2addr v3, v6

    move/from16 v0, v41

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_3

    .line 1245
    .end local v41    # "totalLength":I
    :cond_d
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_e

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_e

    .line 1246
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass1-1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1247
    const-string/jumbo v7, ", child="

    .line 1246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1247
    const-string/jumbo v7, ", this="

    .line 1246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1247
    const-string/jumbo v7, ", "

    .line 1246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1248
    const-string/jumbo v7, "status=Skipped, mTotalLength="

    .line 1246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1248
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1249
    const-string/jumbo v7, ", totalWeight="

    .line 1246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_e
    const/16 v40, 0x1

    goto/16 :goto_4

    .line 1254
    :cond_f
    const/high16 v38, -0x80000000

    .line 1256
    .local v38, "oldWidth":I
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_10

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_10

    .line 1261
    const/16 v38, 0x0

    .line 1262
    const/4 v3, -0x2

    move-object/from16 v0, v30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1264
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_10

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_10

    .line 1265
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass1-2-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1266
    const-string/jumbo v7, ", child="

    .line 1265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1266
    const-string/jumbo v7, ", this="

    .line 1265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1266
    const-string/jumbo v7, ", "

    .line 1265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1267
    const-string/jumbo v7, "status=Modified, LayoutParams.height change to WRAP_CONTENT"

    .line 1265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_10
    const/4 v3, 0x0

    cmpl-float v3, v42, v3

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1277
    :goto_9
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    .line 1275
    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1279
    const/high16 v3, -0x80000000

    move/from16 v0, v38

    if-eq v0, v3, :cond_11

    .line 1280
    move/from16 v0, v38

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1283
    :cond_11
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1284
    .local v19, "childWidth":I
    if-eqz v28, :cond_14

    .line 1285
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v19

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 1286
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    .line 1285
    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1293
    :goto_a
    if-eqz v43, :cond_12

    .line 1294
    move/from16 v0, v19

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 1297
    :cond_12
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_8

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_8

    .line 1298
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass1-2-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1299
    const-string/jumbo v7, ", child="

    .line 1298
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1299
    const-string/jumbo v7, ", this="

    .line 1298
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1299
    const-string/jumbo v7, ", "

    .line 1298
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1300
    const-string/jumbo v7, "status=Measured, mTotalLength="

    .line 1298
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1300
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1298
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1301
    const-string/jumbo v7, ", totalWeight="

    .line 1298
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1276
    .end local v19    # "childWidth":I
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1288
    .restart local v19    # "childWidth":I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v41, v0

    .line 1289
    .restart local v41    # "totalLength":I
    add-int v3, v41, v19

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    .line 1290
    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1289
    add-int/2addr v3, v6

    .line 1290
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 1289
    add-int/2addr v3, v6

    move/from16 v0, v41

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_a

    .line 1323
    .end local v19    # "childWidth":I
    .end local v38    # "oldWidth":I
    .end local v41    # "totalLength":I
    .restart local v14    # "childBaseline":I
    .restart local v16    # "childHeight":I
    .restart local v31    # "margin":I
    .restart local v33    # "matchHeightLocally":Z
    :cond_15
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_5

    .line 1335
    .end local v14    # "childBaseline":I
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_17
    move/from16 v31, v16

    .line 1342
    goto/16 :goto_7

    .line 1345
    :cond_18
    if-eqz v33, :cond_19

    .line 1344
    .end local v31    # "margin":I
    :goto_b
    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_8

    .restart local v31    # "margin":I
    :cond_19
    move/from16 v31, v16

    .line 1345
    goto :goto_b

    .line 1358
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "childHeight":I
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "margin":I
    .end local v33    # "matchHeightLocally":Z
    :cond_1a
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_1b

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_1b

    .line 1359
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.1, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1360
    const-string/jumbo v7, ", maxHeight = "

    .line 1359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1360
    const-string/jumbo v7, ", "

    .line 1359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1361
    const-string/jumbo v7, "weightedMaxHeight = "

    .line 1359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1362
    const-string/jumbo v7, ", alternativeMaxHeight = "

    .line 1359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1362
    const-string/jumbo v7, ", "

    .line 1359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1363
    const-string/jumbo v7, "mTotalLength="

    .line 1359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1363
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_1c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1367
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1372
    :cond_1c
    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1d

    .line 1373
    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_21

    .line 1376
    :cond_1d
    :goto_c
    const/4 v3, 0x3

    aget v3, v34, v3

    .line 1377
    const/4 v6, 0x0

    aget v6, v34, v6

    .line 1378
    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1377
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1376
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1379
    .local v12, "ascent":I
    const/4 v3, 0x3

    aget v3, v35, v3

    .line 1380
    const/4 v6, 0x0

    aget v6, v35, v6

    .line 1381
    const/4 v7, 0x1

    aget v7, v35, v7

    const/4 v8, 0x2

    aget v8, v35, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1380
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1379
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1382
    .local v22, "descent":I
    add-int v3, v12, v22

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1385
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    :cond_1e
    if-eqz v43, :cond_26

    .line 1386
    const/high16 v3, -0x80000000

    move/from16 v0, v46

    if-eq v0, v3, :cond_1f

    if-nez v46, :cond_26

    .line 1387
    :cond_1f
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_20

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_20

    .line 1388
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Pass.1.5 (Horizontal), this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_20
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1392
    const/4 v5, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v5, v0, :cond_25

    .line 1393
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1395
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_22

    .line 1396
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1392
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1374
    .end local v4    # "child":Landroid/view/View;
    :cond_21
    const/4 v3, 0x2

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1d

    .line 1375
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1e

    goto/16 :goto_c

    .line 1400
    .restart local v4    # "child":Landroid/view/View;
    :cond_22
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_23

    .line 1401
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1402
    goto :goto_e

    .line 1406
    :cond_23
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1405
    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1407
    .restart local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v28, :cond_24

    .line 1408
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v29

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 1409
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    .line 1408
    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_e

    .line 1411
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v41, v0

    .line 1412
    .restart local v41    # "totalLength":I
    add-int v3, v41, v29

    .line 1413
    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1412
    add-int/2addr v3, v6

    .line 1413
    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1412
    add-int/2addr v3, v6

    .line 1413
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 1412
    add-int/2addr v3, v6

    move/from16 v0, v41

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_e

    .line 1417
    .end local v4    # "child":Landroid/view/View;
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v41    # "totalLength":I
    :cond_25
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_26

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_26

    .line 1418
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.1.5, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1419
    const-string/jumbo v7, ", largestChildWidth="

    .line 1418
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1420
    const-string/jumbo v7, ", mTotalLength="

    .line 1418
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1420
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1418
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1427
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v47, v0

    .line 1430
    .local v47, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v47

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v47

    .line 1433
    const/4 v3, 0x0

    move/from16 v0, v47

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v48

    .line 1434
    .local v48, "widthSizeAndState":I
    const v3, 0xffffff

    and-int v47, v48, v3

    .line 1439
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v21, v47, v3

    .line 1440
    .local v21, "delta":I
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_27

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_27

    .line 1441
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Pass.2 (Horizontal), this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1442
    const-string/jumbo v7, ", delta = "

    .line 1441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1442
    const-string/jumbo v7, ", "

    .line 1441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1442
    const-string/jumbo v7, "widthSize = "

    .line 1441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1443
    const-string/jumbo v7, ", mTotalLength = "

    .line 1441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1443
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_27
    if-nez v40, :cond_28

    if-eqz v21, :cond_42

    const/4 v3, 0x0

    cmpl-float v3, v42, v3

    if-lez v3, :cond_42

    .line 1446
    :cond_28
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v44, v0

    .line 1448
    .local v44, "weightSum":F
    :goto_f
    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v34, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v34, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v34, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v34, v6

    .line 1449
    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v35, v6

    .line 1450
    const/16 v36, -0x1

    .line 1452
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1454
    const/4 v5, 0x0

    :goto_10
    move/from16 v0, v20

    if-ge v5, v0, :cond_3a

    .line 1455
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1457
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_29

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_2b

    .line 1454
    :cond_29
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1446
    .end local v4    # "child":Landroid/view/View;
    .end local v44    # "weightSum":F
    :cond_2a
    move/from16 v44, v42

    .restart local v44    # "weightSum":F
    goto :goto_f

    .line 1461
    .restart local v4    # "child":Landroid/view/View;
    :cond_2b
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_2c

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_2c

    .line 1462
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Child in Pass2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1463
    const-string/jumbo v7, ", child="

    .line 1462
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1463
    const-string/jumbo v7, ", this="

    .line 1462
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_2c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1469
    .restart local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1470
    .local v15, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_33

    .line 1472
    move/from16 v0, v21

    int-to-float v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v44

    float-to-int v0, v3

    move/from16 v39, v0

    .line 1473
    .local v39, "share":I
    sub-float v44, v44, v15

    .line 1474
    sub-int v21, v21, v39

    .line 1478
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    .line 1479
    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1476
    move/from16 v0, p2

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 1483
    .local v17, "childHeightMeasureSpec":I
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_2d

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v46

    if-eq v0, v3, :cond_31

    .line 1486
    :cond_2d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v3, v39

    .line 1487
    .restart local v19    # "childWidth":I
    if-gez v19, :cond_2e

    .line 1488
    const/16 v19, 0x0

    .line 1492
    :cond_2e
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1491
    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1495
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_2f

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_2f

    .line 1496
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass2-1-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1497
    const-string/jumbo v7, ", child="

    .line 1496
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1497
    const-string/jumbo v7, ", this="

    .line 1496
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1497
    const-string/jumbo v7, ", "

    .line 1496
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1498
    const-string/jumbo v7, "status=Measured, share="

    .line 1496
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1499
    const-string/jumbo v7, ", childWidth="

    .line 1496
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1500
    const-string/jumbo v7, ", mTotalLength="

    .line 1496
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1500
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1496
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    .end local v19    # "childWidth":I
    :cond_2f
    :goto_12
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x1000000

    and-int/2addr v3, v6

    .line 1517
    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1528
    .end local v17    # "childHeightMeasureSpec":I
    .end local v39    # "share":I
    :cond_30
    :goto_13
    if-eqz v28, :cond_34

    .line 1529
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 1530
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    .line 1529
    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1537
    :goto_14
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-eq v0, v3, :cond_36

    .line 1538
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_35

    const/16 v33, 0x1

    .line 1540
    .restart local v33    # "matchHeightLocally":Z
    :goto_15
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v31, v3, v6

    .line 1541
    .restart local v31    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v31

    .line 1542
    .restart local v16    # "childHeight":I
    move/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1544
    if-eqz v33, :cond_37

    .line 1543
    .end local v31    # "margin":I
    :goto_16
    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1546
    if-eqz v10, :cond_38

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_38

    const/4 v10, 0x1

    .line 1548
    :goto_17
    if-eqz v13, :cond_29

    .line 1549
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1550
    .restart local v14    # "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_29

    .line 1552
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_39

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_18
    and-int/lit8 v25, v3, 0x70

    .line 1554
    .restart local v25    # "gravity":I
    shr-int/lit8 v3, v25, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v27, v3, 0x1

    .line 1557
    .restart local v27    # "index":I
    aget v3, v34, v27

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v27

    .line 1558
    aget v3, v35, v27

    .line 1559
    sub-int v6, v16, v14

    .line 1558
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v27

    goto/16 :goto_11

    .line 1505
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v25    # "gravity":I
    .end local v27    # "index":I
    .end local v33    # "matchHeightLocally":Z
    .restart local v17    # "childHeightMeasureSpec":I
    .restart local v39    # "share":I
    :cond_31
    if-lez v39, :cond_32

    move/from16 v3, v39

    :goto_19
    const/high16 v6, 0x40000000    # 2.0f

    .line 1504
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1508
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_2f

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_2f

    .line 1509
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] -, Child in Pass2-1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1510
    const-string/jumbo v7, ", child="

    .line 1509
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1510
    const-string/jumbo v7, ", this="

    .line 1509
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1510
    const-string/jumbo v7, ", "

    .line 1509
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1511
    const-string/jumbo v7, "status=Measured, share="

    .line 1509
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1512
    const-string/jumbo v7, ", mTotalLength="

    .line 1509
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1512
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1509
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1505
    :cond_32
    const/4 v3, 0x0

    goto :goto_19

    .line 1520
    .end local v17    # "childHeightMeasureSpec":I
    .end local v39    # "share":I
    :cond_33
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_30

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_30

    .line 1521
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass2-1-3: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1522
    const-string/jumbo v7, ", child="

    .line 1521
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1522
    const-string/jumbo v7, ", this="

    .line 1521
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1522
    const-string/jumbo v7, ", "

    .line 1521
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1523
    const-string/jumbo v7, "childExtra="

    .line 1521
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1524
    const-string/jumbo v7, ", mTotalLength="

    .line 1521
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1524
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1521
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1532
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v41, v0

    .line 1533
    .restart local v41    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v41

    .line 1534
    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1533
    add-int/2addr v3, v6

    .line 1534
    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1533
    add-int/2addr v3, v6

    .line 1534
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 1533
    add-int/2addr v3, v6

    move/from16 v0, v41

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_14

    .line 1538
    .end local v41    # "totalLength":I
    :cond_35
    const/16 v33, 0x0

    .restart local v33    # "matchHeightLocally":Z
    goto/16 :goto_15

    .line 1537
    .end local v33    # "matchHeightLocally":Z
    :cond_36
    const/16 v33, 0x0

    .restart local v33    # "matchHeightLocally":Z
    goto/16 :goto_15

    .restart local v16    # "childHeight":I
    .restart local v31    # "margin":I
    :cond_37
    move/from16 v31, v16

    .line 1544
    goto/16 :goto_16

    .line 1546
    .end local v31    # "margin":I
    :cond_38
    const/4 v10, 0x0

    goto/16 :goto_17

    .line 1552
    .restart local v14    # "childBaseline":I
    :cond_39
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_18

    .line 1565
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "childBaseline":I
    .end local v15    # "childExtra":F
    .end local v16    # "childHeight":I
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "matchHeightLocally":Z
    :cond_3a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1567
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_3b

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_3b

    .line 1568
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.2-1, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1569
    const-string/jumbo v7, "maxHeight="

    .line 1568
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1569
    const-string/jumbo v7, ", weightedMaxHeight="

    .line 1568
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1570
    const-string/jumbo v7, ", alternativeMaxHeight="

    .line 1568
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1570
    const-string/jumbo v7, ", "

    .line 1568
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1571
    const-string/jumbo v7, "delta="

    .line 1568
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1571
    const-string/jumbo v7, ", mTotalLength="

    .line 1568
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1571
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1568
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_3b
    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3c

    .line 1579
    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_41

    .line 1582
    :cond_3c
    :goto_1a
    const/4 v3, 0x3

    aget v3, v34, v3

    .line 1583
    const/4 v6, 0x0

    aget v6, v34, v6

    .line 1584
    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1583
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1582
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1585
    .restart local v12    # "ascent":I
    const/4 v3, 0x3

    aget v3, v35, v3

    .line 1586
    const/4 v6, 0x0

    aget v6, v35, v6

    .line 1587
    const/4 v7, 0x1

    aget v7, v35, v7

    const/4 v8, 0x2

    aget v8, v35, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1586
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1585
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1588
    .restart local v22    # "descent":I
    add-int v3, v12, v22

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1632
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    .end local v44    # "weightSum":F
    :cond_3d
    :goto_1b
    if-nez v10, :cond_3e

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-eq v0, v3, :cond_3e

    .line 1633
    move/from16 v36, v11

    .line 1636
    :cond_3e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    add-int v36, v36, v3

    .line 1639
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1641
    const/high16 v3, -0x1000000

    and-int v3, v3, v18

    or-int v3, v3, v48

    .line 1643
    shl-int/lit8 v6, v18, 0x10

    .line 1642
    move/from16 v0, v36

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 1641
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1645
    if-eqz v32, :cond_40

    .line 1646
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_3f

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_3f

    .line 1647
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Pass.3 (Horizontal), this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1648
    const-string/jumbo v7, ", uniformHeight="

    .line 1647
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1648
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    .line 1647
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_3f
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 1653
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_40

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_40

    .line 1654
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.3, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_40
    return-void

    .line 1580
    .restart local v44    # "weightSum":F
    :cond_41
    const/4 v3, 0x2

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3c

    .line 1581
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3d

    goto/16 :goto_1a

    .line 1591
    .end local v44    # "weightSum":F
    :cond_42
    move/from16 v0, v45

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1595
    if-eqz v43, :cond_47

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v46

    if-eq v0, v3, :cond_47

    .line 1596
    const/4 v5, 0x0

    :goto_1c
    move/from16 v0, v20

    if-ge v5, v0, :cond_47

    .line 1597
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1599
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_43

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_44

    .line 1596
    :cond_43
    :goto_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 1604
    :cond_44
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1606
    .restart local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1607
    .restart local v15    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_45

    .line 1609
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1610
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1611
    const/high16 v7, 0x40000000    # 2.0f

    .line 1610
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1608
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1614
    :cond_45
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_43

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_43

    .line 1615
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_46

    .line 1616
    const-string/jumbo v37, "status=Measured"

    .line 1617
    .local v37, "measureString":Ljava/lang/String;
    :goto_1e
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass2-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1618
    const-string/jumbo v7, ", child="

    .line 1617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1618
    const-string/jumbo v7, ", this="

    .line 1617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1618
    const-string/jumbo v7, ", "

    .line 1617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1616
    .end local v37    # "measureString":Ljava/lang/String;
    :cond_46
    const-string/jumbo v37, "status=Skipped"

    .restart local v37    # "measureString":Ljava/lang/String;
    goto :goto_1e

    .line 1623
    .end local v4    # "child":Landroid/view/View;
    .end local v15    # "childExtra":F
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v37    # "measureString":Ljava/lang/String;
    :cond_47
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_3d

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_3d

    .line 1624
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.2-2, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1625
    const-string/jumbo v7, "maxHeight="

    .line 1624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1625
    const-string/jumbo v7, ", weightedMaxHeight="

    .line 1624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1626
    const-string/jumbo v7, ", alternativeMaxHeight="

    .line 1624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1626
    const-string/jumbo v7, ", "

    .line 1624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1627
    const-string/jumbo v7, "delta="

    .line 1624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1627
    const-string/jumbo v7, ", mTotalLength="

    .line 1624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1627
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1628
    const-string/jumbo v7, ", useLargestChild="

    .line 1624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 1704
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 39
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 700
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 701
    const/16 v27, 0x0

    .line 702
    .local v27, "maxWidth":I
    const/4 v15, 0x0

    .line 703
    .local v15, "childState":I
    const/4 v11, 0x0

    .line 704
    .local v11, "alternativeMaxWidth":I
    const/16 v37, 0x0

    .line 705
    .local v37, "weightedMaxWidth":I
    const/4 v10, 0x1

    .line 706
    .local v10, "allFillParent":Z
    const/16 v34, 0x0

    .line 708
    .local v34, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v17

    .line 710
    .local v17, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v38

    .line 711
    .local v38, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 713
    .local v19, "heightMode":I
    const/16 v25, 0x0

    .line 714
    .local v25, "matchWidth":Z
    const/16 v32, 0x0

    .line 716
    .local v32, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 717
    .local v12, "baselineChildIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v35, v0

    .line 719
    .local v35, "useLargestChild":Z
    const/high16 v22, -0x80000000

    .line 721
    .local v22, "largestChildHeight":I
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_0

    .line 722
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Pass.1, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_14

    .line 727
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 729
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_1

    .line 730
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 726
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_2

    .line 735
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 736
    goto :goto_1

    .line 739
    :cond_2
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_3

    .line 740
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Child in Pass1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", child="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 741
    const-string/jumbo v7, ", this="

    .line 740
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 745
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 748
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 750
    .local v23, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v34, v34, v3

    .line 752
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_8

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v0

    .line 757
    .local v33, "totalLength":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v3, v3, v33

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 759
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_5

    .line 760
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass1-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 761
    const-string/jumbo v7, ", child="

    .line 760
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 761
    const-string/jumbo v7, ", this="

    .line 760
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 761
    const-string/jumbo v7, ", "

    .line 760
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 762
    const-string/jumbo v7, "status=Skipped, mTotalLength="

    .line 760
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 762
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 760
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 763
    const-string/jumbo v7, ", totalWeight="

    .line 760
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_5
    const/16 v32, 0x1

    .line 817
    :cond_6
    :goto_2
    if-ltz v12, :cond_7

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_7

    .line 818
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 824
    :cond_7
    if-ge v5, v12, :cond_d

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    .line 825
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 767
    .end local v33    # "totalLength":I
    :cond_8
    const/high16 v30, -0x80000000

    .line 769
    .local v30, "oldHeight":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_9

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 774
    const/16 v30, 0x0

    .line 775
    const/4 v3, -0x2

    move-object/from16 v0, v23

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 777
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_9

    .line 778
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass1-2-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 779
    const-string/jumbo v7, ", child="

    .line 778
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 779
    const-string/jumbo v7, ", this="

    .line 778
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 779
    const-string/jumbo v7, ", "

    .line 778
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 780
    const-string/jumbo v7, "status=Modified, LayoutParams.height change to WRAP_CONTENT"

    .line 778
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_9
    const/4 v3, 0x0

    cmpl-float v3, v34, v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 789
    :goto_3
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    .line 788
    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 792
    const/high16 v3, -0x80000000

    move/from16 v0, v30

    if-eq v0, v3, :cond_a

    .line 793
    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 796
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 797
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v0

    .line 798
    .restart local v33    # "totalLength":I
    add-int v3, v33, v14

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    .line 799
    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 798
    add-int/2addr v3, v6

    .line 799
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 798
    add-int/2addr v3, v6

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 801
    if-eqz v35, :cond_b

    .line 802
    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 805
    :cond_b
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_6

    .line 806
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass1-2-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 807
    const-string/jumbo v7, ", child="

    .line 806
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 807
    const-string/jumbo v7, ", this="

    .line 806
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 807
    const-string/jumbo v7, ", "

    .line 806
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 808
    const-string/jumbo v7, "status=Measured, mTotalLength="

    .line 806
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 808
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 806
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 809
    const-string/jumbo v7, ", totalWeight="

    .line 806
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 790
    .end local v14    # "childHeight":I
    .end local v33    # "totalLength":I
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 831
    .end local v30    # "oldHeight":I
    .restart local v33    # "totalLength":I
    :cond_d
    const/16 v26, 0x0

    .line 832
    .local v26, "matchWidthLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v38

    if-eq v0, v3, :cond_e

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_e

    .line 837
    const/16 v25, 0x1

    .line 838
    const/16 v26, 0x1

    .line 841
    :cond_e
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 842
    .local v24, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v29, v3, v24

    .line 843
    .local v29, "measuredWidth":I
    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 844
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 846
    if-eqz v10, :cond_10

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_10

    const/4 v10, 0x1

    .line 847
    :goto_4
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_12

    .line 853
    if-eqz v26, :cond_11

    .line 852
    .end local v24    # "margin":I
    :goto_5
    move/from16 v0, v37

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 859
    :goto_6
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_f

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_f

    .line 860
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", child="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 861
    const-string/jumbo v7, ", this="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 861
    const-string/jumbo v7, ", "

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 861
    const-string/jumbo v7, "matchWidth="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 862
    const-string/jumbo v7, ", matchWidthLocally="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 862
    const-string/jumbo v7, ", "

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 863
    const-string/jumbo v7, "weightedMaxWidth="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 864
    const-string/jumbo v7, ", alternativeMaxWidth="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_1

    .line 846
    .restart local v24    # "margin":I
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_11
    move/from16 v24, v29

    .line 853
    goto/16 :goto_5

    .line 856
    :cond_12
    if-eqz v26, :cond_13

    .line 855
    .end local v24    # "margin":I
    :goto_7
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_6

    .restart local v24    # "margin":I
    :cond_13
    move/from16 v24, v29

    .line 856
    goto :goto_7

    .line 870
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "margin":I
    .end local v26    # "matchWidthLocally":Z
    .end local v29    # "measuredWidth":I
    .end local v33    # "totalLength":I
    :cond_14
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_15

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_15

    .line 871
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.1, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 872
    const-string/jumbo v7, "maxWidth="

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 872
    const-string/jumbo v7, ", weightedMaxWidth="

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 873
    const-string/jumbo v7, ", alternativeMaxWidth="

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 873
    const-string/jumbo v7, ", "

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 874
    const-string/jumbo v7, "mTotalLength="

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 874
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 874
    const-string/jumbo v7, ", totalWeight="

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 878
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 881
    :cond_16
    if-eqz v35, :cond_1c

    .line 882
    const/high16 v3, -0x80000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_17

    if-nez v19, :cond_1c

    .line 883
    :cond_17
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_18

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_18

    .line 884
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Pass.1.5, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 889
    const/4 v5, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v5, v0, :cond_1b

    .line 890
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 892
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_19

    .line 893
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 889
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 897
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1a

    .line 898
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 899
    goto :goto_9

    .line 903
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 902
    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 905
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v0

    .line 906
    .restart local v33    # "totalLength":I
    add-int v3, v33, v22

    .line 907
    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 906
    add-int/2addr v3, v6

    .line 907
    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 906
    add-int/2addr v3, v6

    .line 907
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 906
    add-int/2addr v3, v6

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_9

    .line 910
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "totalLength":I
    :cond_1b
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_1c

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_1c

    .line 911
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.1.5, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 912
    const-string/jumbo v7, ", largestChildHeight="

    .line 911
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 913
    const-string/jumbo v7, ", mTotalLength="

    .line 911
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 913
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 911
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 920
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    .line 923
    .local v20, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 926
    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v21

    .line 927
    .local v21, "heightSizeAndState":I
    const v3, 0xffffff

    and-int v20, v21, v3

    .line 932
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v18, v20, v3

    .line 933
    .local v18, "delta":I
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_1d

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_1d

    .line 934
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Pass.2, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 935
    const-string/jumbo v7, "delta="

    .line 934
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 935
    const-string/jumbo v7, ", "

    .line 934
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 935
    const-string/jumbo v7, "heightSize="

    .line 934
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 936
    const-string/jumbo v7, ", mTotalLength="

    .line 934
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 936
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 934
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_1d
    if-nez v32, :cond_1e

    if-eqz v18, :cond_32

    const/4 v3, 0x0

    cmpl-float v3, v34, v3

    if-lez v3, :cond_32

    .line 939
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v36, v0

    .line 941
    .local v36, "weightSum":F
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 943
    const/4 v5, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v5, v0, :cond_2d

    .line 944
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 946
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_20

    .line 943
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 939
    .end local v4    # "child":Landroid/view/View;
    .end local v36    # "weightSum":F
    :cond_1f
    move/from16 v36, v34

    .restart local v36    # "weightSum":F
    goto :goto_a

    .line 950
    .restart local v4    # "child":Landroid/view/View;
    :cond_20
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_21

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_21

    .line 951
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Child in Pass2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 952
    const-string/jumbo v7, "child="

    .line 951
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 952
    const-string/jumbo v7, ", this="

    .line 951
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_21
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 957
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 958
    .local v13, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_28

    .line 960
    move/from16 v0, v18

    int-to-float v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v36

    float-to-int v0, v3

    move/from16 v31, v0

    .line 961
    .local v31, "share":I
    sub-float v36, v36, v13

    .line 962
    sub-int v18, v18, v31

    .line 965
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    .line 966
    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 965
    add-int/2addr v3, v6

    .line 966
    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 965
    add-int/2addr v3, v6

    .line 966
    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 964
    move/from16 v0, p1

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v16

    .line 970
    .local v16, "childWidthMeasureSpec":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_22

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v0, v3, :cond_26

    .line 973
    :cond_22
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v31

    .line 974
    .restart local v14    # "childHeight":I
    if-gez v14, :cond_23

    .line 975
    const/4 v14, 0x0

    .line 979
    :cond_23
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 978
    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 981
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_24

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_24

    .line 982
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass2-1-1-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 983
    const-string/jumbo v7, ", child="

    .line 982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 983
    const-string/jumbo v7, ", this="

    .line 982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 983
    const-string/jumbo v7, ", "

    .line 982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 984
    const-string/jumbo v7, "status=Measured, share="

    .line 982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 985
    const-string/jumbo v7, ", childHeight="

    .line 982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 986
    const-string/jumbo v7, ", mTotalLength="

    .line 982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 986
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v14    # "childHeight":I
    :cond_24
    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 1015
    .end local v16    # "childWidthMeasureSpec":I
    .end local v31    # "share":I
    :cond_25
    :goto_e
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 1016
    .restart local v24    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v29, v3, v24

    .line 1017
    .restart local v29    # "measuredWidth":I
    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1019
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v38

    if-eq v0, v3, :cond_2a

    .line 1020
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_29

    const/16 v26, 0x1

    .line 1023
    .restart local v26    # "matchWidthLocally":Z
    :goto_f
    if-eqz v26, :cond_2b

    .line 1022
    .end local v24    # "margin":I
    :goto_10
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1025
    if-eqz v10, :cond_2c

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2c

    const/4 v10, 0x1

    .line 1027
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v0

    .line 1028
    .restart local v33    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v33

    .line 1029
    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1028
    add-int/2addr v3, v6

    .line 1029
    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1028
    add-int/2addr v3, v6

    .line 1029
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 1028
    add-int/2addr v3, v6

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_c

    .line 992
    .end local v26    # "matchWidthLocally":Z
    .end local v29    # "measuredWidth":I
    .end local v33    # "totalLength":I
    .restart local v16    # "childWidthMeasureSpec":I
    .restart local v31    # "share":I
    :cond_26
    if-lez v31, :cond_27

    move/from16 v3, v31

    .line 993
    :goto_12
    const/high16 v6, 0x40000000    # 2.0f

    .line 992
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 991
    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 995
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_24

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_24

    .line 996
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass2-1-1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 997
    const-string/jumbo v7, ", child="

    .line 996
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 997
    const-string/jumbo v7, ", this="

    .line 996
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 997
    const-string/jumbo v7, ", "

    .line 996
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 998
    const-string/jumbo v7, "status=Measured, share="

    .line 996
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 999
    const-string/jumbo v7, ", mTotalLength="

    .line 996
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 999
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 996
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 992
    :cond_27
    const/4 v3, 0x0

    goto :goto_12

    .line 1007
    .end local v16    # "childWidthMeasureSpec":I
    .end local v31    # "share":I
    :cond_28
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_25

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_25

    .line 1008
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass2-1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1009
    const-string/jumbo v7, ", child="

    .line 1008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1009
    const-string/jumbo v7, ", this="

    .line 1008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1009
    const-string/jumbo v7, ", "

    .line 1008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1010
    const-string/jumbo v7, "status=Skipped, ChildExtra="

    .line 1008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1011
    const-string/jumbo v7, ", mTotalLength="

    .line 1008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1011
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1020
    .restart local v24    # "margin":I
    .restart local v29    # "measuredWidth":I
    :cond_29
    const/16 v26, 0x0

    .restart local v26    # "matchWidthLocally":Z
    goto/16 :goto_f

    .line 1019
    .end local v26    # "matchWidthLocally":Z
    :cond_2a
    const/16 v26, 0x0

    .restart local v26    # "matchWidthLocally":Z
    goto/16 :goto_f

    :cond_2b
    move/from16 v24, v29

    .line 1023
    goto/16 :goto_10

    .line 1025
    .end local v24    # "margin":I
    :cond_2c
    const/4 v10, 0x0

    goto/16 :goto_11

    .line 1033
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "matchWidthLocally":Z
    .end local v29    # "measuredWidth":I
    :cond_2d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1035
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_2e

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_2e

    .line 1036
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.2-1, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1037
    const-string/jumbo v7, "maxWidth="

    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1037
    const-string/jumbo v7, ", weightedMaxWidth="

    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1038
    const-string/jumbo v7, ", alternativeMaxWidth="

    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1038
    const-string/jumbo v7, ", "

    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1039
    const-string/jumbo v7, "delta="

    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1039
    const-string/jumbo v7, ", mTotalLength="

    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1039
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    .end local v36    # "weightSum":F
    :cond_2e
    :goto_13
    if-nez v10, :cond_2f

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v38

    if-eq v0, v3, :cond_2f

    .line 1089
    move/from16 v27, v11

    .line 1092
    :cond_2f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    add-int v27, v27, v3

    .line 1095
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1097
    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1100
    if-eqz v25, :cond_31

    .line 1101
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_30

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_30

    .line 1102
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] + Pass.3, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1103
    const-string/jumbo v7, ", uniformWidth="

    .line 1102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1103
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    .line 1102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1103
    const-string/jumbo v7, ", this="

    .line 1102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_30
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 1108
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_31

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_31

    .line 1109
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.3, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_31
    return-void

    .line 1044
    :cond_32
    move/from16 v0, v37

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1050
    if-eqz v35, :cond_37

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v0, v3, :cond_37

    .line 1051
    const/4 v5, 0x0

    :goto_14
    move/from16 v0, v17

    if-ge v5, v0, :cond_37

    .line 1052
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1054
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_34

    .line 1051
    :cond_33
    :goto_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1059
    :cond_34
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 1061
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1062
    .restart local v13    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_35

    .line 1064
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1065
    const/high16 v6, 0x40000000    # 2.0f

    .line 1064
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1067
    const/high16 v6, 0x40000000    # 2.0f

    .line 1066
    move/from16 v0, v22

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1063
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1070
    :cond_35
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_33

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_33

    .line 1071
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_36

    .line 1072
    const-string/jumbo v28, "status=Measured"

    .line 1073
    .local v28, "measureString":Ljava/lang/String;
    :goto_16
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Child in Pass2-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1074
    const-string/jumbo v7, ", child="

    .line 1073
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1074
    const-string/jumbo v7, ", this="

    .line 1073
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1074
    const-string/jumbo v7, ", "

    .line 1073
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1072
    .end local v28    # "measureString":Ljava/lang/String;
    :cond_36
    const-string/jumbo v28, "status=Skipped"

    .restart local v28    # "measureString":Ljava/lang/String;
    goto :goto_16

    .line 1079
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "measureString":Ljava/lang/String;
    :cond_37
    sget-boolean v3, Landroid/widget/LinearLayout;->DBG:Z

    if-eqz v3, :cond_2e

    sget-boolean v3, Landroid/widget/LinearLayout;->sDebugLayout:Z

    if-eqz v3, :cond_2e

    .line 1080
    const-string/jumbo v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LinearLayout] - Pass.2-2, this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1081
    const-string/jumbo v7, "maxWidth="

    .line 1080
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1081
    const-string/jumbo v7, ", weightedMaxWidth="

    .line 1080
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1082
    const-string/jumbo v7, ", alternativeMaxWidth="

    .line 1080
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1082
    const-string/jumbo v7, ", "

    .line 1080
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1082
    const-string/jumbo v7, "delta="

    .line 1080
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1083
    const-string/jumbo v7, ", mTotalLength="

    .line 1080
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1083
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1080
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1084
    const-string/jumbo v7, ", useLargestChild="

    .line 1080
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 355
    return-void

    .line 358
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 359
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 353
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1752
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1753
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    .line 1751
    :goto_0
    return-void

    .line 1755
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 647
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 648
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 646
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1855
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1856
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 1857
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 1858
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 1859
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1854
    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 480
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 479
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 584
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    const-string/jumbo v2, ")"

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 583
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 304
    iget-object v1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 305
    return-void

    .line 307
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 308
    if-eqz p1, :cond_2

    .line 309
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 310
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 315
    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 316
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 303
    return-void

    .line 312
    :cond_2
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 313
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 329
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 328
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2040
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 2041
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 2042
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 2045
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 2046
    or-int/lit8 p1, p1, 0x30

    .line 2049
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 2050
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 2039
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 2056
    and-int v0, p1, v2

    .line 2057
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 2058
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 2059
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 2055
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 511
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 510
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 2012
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 2013
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 2014
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 2011
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .prologue
    .line 263
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 266
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 262
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2065
    and-int/lit8 v0, p1, 0x70

    .line 2066
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 2067
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 2068
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 2064
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 641
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method
