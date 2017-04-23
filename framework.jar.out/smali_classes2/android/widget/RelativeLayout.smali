.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$DependencyGraph;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_END:I = 0x13

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_END:I = 0x15

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_START:I = 0x14

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_START:I = 0x12

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DBG:Z

.field private static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout.log"

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "Layout"

.field private static final DEBUG_RULE_PROPERTY:Ljava/lang/String; = "debug.layout.log.rule"

.field private static final DEFAULT_WIDTH:I = 0x10000

.field public static final END_OF:I = 0x11

.field public static final LEFT_OF:I = 0x0

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I

.field private static final RULES_VERTICAL:[I

.field public static final START_OF:I = 0x10

.field public static final TRUE:I = -0x1

.field private static final VALUE_NOT_SET:I = -0x80000000

.field private static final VERB_COUNT:I = 0x16

.field private static sDebugLayout:Z

.field private static sDebugRule:Z


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mIgnoreGravity:I

.field private mMeasureVerticalWithPaddingMargin:Z

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 95
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/RelativeLayout;->DBG:Z

    .line 99
    sput-boolean v2, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    .line 103
    sput-boolean v2, Landroid/widget/RelativeLayout;->sDebugRule:Z

    .line 212
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    .line 211
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 215
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    .line 92
    return-void

    .line 215
    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 224
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 226
    const v0, 0x800033

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 231
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 236
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$DependencyGraph;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 241
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 245
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 269
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 270
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    .line 271
    invoke-direct {p0}, Landroid/widget/RelativeLayout;->initRelativeLayout()V

    .line 267
    return-void
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 6
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I
    .param p3, "rules"    # [I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    .line 1003
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1004
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1006
    invoke-direct {p0, p3, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 1007
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_6

    .line 1008
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1009
    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1008
    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1016
    :cond_0
    :goto_0
    invoke-direct {p0, p3, v4}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_7

    .line 1018
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1019
    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1018
    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1024
    :cond_1
    :goto_1
    invoke-direct {p0, p3, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 1025
    if-eqz v0, :cond_8

    .line 1026
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1031
    :cond_2
    :goto_2
    const/4 v1, 0x7

    invoke-direct {p0, p3, v1}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_9

    .line 1033
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1040
    :cond_3
    :goto_3
    const/16 v1, 0x9

    aget v1, p3, v1

    if-eqz v1, :cond_4

    .line 1041
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1044
    :cond_4
    const/16 v1, 0xb

    aget v1, p3, v1

    if-eqz v1, :cond_5

    .line 1045
    if-ltz p2, :cond_5

    .line 1046
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 994
    :cond_5
    return-void

    .line 1010
    :cond_6
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_0

    aget v1, p3, v2

    if-eqz v1, :cond_0

    .line 1011
    if-ltz p2, :cond_0

    .line 1012
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 1020
    :cond_7
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_1

    aget v1, p3, v4

    if-eqz v1, :cond_1

    .line 1021
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 1027
    :cond_8
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_2

    aget v1, p3, v5

    if-eqz v1, :cond_2

    .line 1028
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 1034
    :cond_9
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    aget v1, p3, v1

    if-eqz v1, :cond_3

    .line 1035
    if-ltz p2, :cond_3

    .line 1036
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 6
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I
    .param p3, "myBaseline"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/high16 v3, -0x80000000

    .line 1052
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 1055
    .local v2, "rules":[I
    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    .line 1056
    .local v1, "baselineOffset":I
    if-eq v1, v4, :cond_1

    .line 1057
    if-eq p3, v4, :cond_0

    .line 1058
    sub-int/2addr v1, p3

    .line 1060
    :cond_0
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1061
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1062
    return-void

    .line 1067
    :cond_1
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1068
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1070
    invoke-direct {p0, v2, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 1071
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_8

    .line 1072
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1073
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1072
    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1080
    :cond_2
    :goto_0
    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 1081
    if-eqz v0, :cond_9

    .line 1082
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1083
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1082
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1088
    :cond_3
    :goto_1
    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 1089
    if-eqz v0, :cond_a

    .line 1090
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1095
    :cond_4
    :goto_2
    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 1096
    if-eqz v0, :cond_b

    .line 1097
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1104
    :cond_5
    :goto_3
    const/16 v3, 0xa

    aget v3, v2, v3

    if-eqz v3, :cond_6

    .line 1105
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1108
    :cond_6
    const/16 v3, 0xc

    aget v3, v2, v3

    if-eqz v3, :cond_7

    .line 1109
    if-ltz p2, :cond_7

    .line 1110
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1051
    :cond_7
    return-void

    .line 1074
    :cond_8
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_2

    aget v3, v2, v5

    if-eqz v3, :cond_2

    .line 1075
    if-ltz p2, :cond_2

    .line 1076
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 1084
    :cond_9
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    aget v3, v2, v3

    if-eqz v3, :cond_3

    .line 1085
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 1091
    :cond_a
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    aget v3, v2, v3

    if-eqz v3, :cond_4

    .line 1092
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 1098
    :cond_b
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    aget v3, v2, v3

    if-eqz v3, :cond_5

    .line 1099
    if-ltz p2, :cond_5

    .line 1100
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I

    .prologue
    .line 1163
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1164
    .local v0, "childWidth":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1166
    .local v1, "left":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1167
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1162
    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    .prologue
    .line 1171
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1172
    .local v0, "childHeight":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1174
    .local v1, "top":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1175
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1170
    return-void
.end method

.method private compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 3
    .param p1, "p1"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "p2"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 758
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int v0, v1, v2

    .line 759
    .local v0, "topDiff":I
    if-eqz v0, :cond_0

    .line 760
    return v0

    .line 762
    :cond_0
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .locals 8
    .param p1, "childStart"    # I
    .param p2, "childEnd"    # I
    .param p3, "childSize"    # I
    .param p4, "startMargin"    # I
    .param p5, "endMargin"    # I
    .param p6, "startPadding"    # I
    .param p7, "endPadding"    # I
    .param p8, "mySize"    # I

    .prologue
    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, "childSpecMode":I
    const/4 v1, 0x0

    .line 853
    .local v1, "childSpecSize":I
    if-gez p8, :cond_4

    const/4 v2, 0x1

    .line 854
    .local v2, "isUnspecified":Z
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-eqz v6, :cond_5

    .line 873
    :cond_0
    move v5, p1

    .line 874
    .local v5, "tempStart":I
    move v4, p2

    .line 878
    .local v4, "tempEnd":I
    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_1

    .line 879
    add-int v5, p6, p4

    .line 881
    :cond_1
    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_2

    .line 882
    sub-int v6, p8, p7

    sub-int v4, v6, p5

    .line 886
    :cond_2
    sub-int v3, v4, v5

    .line 888
    .local v3, "maxAvailable":I
    const/high16 v6, -0x80000000

    if-eq p1, v6, :cond_9

    const/high16 v6, -0x80000000

    if-eq p2, v6, :cond_9

    .line 890
    if-eqz v2, :cond_8

    const/4 v0, 0x0

    .line 891
    :goto_1
    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 925
    :cond_3
    :goto_2
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    return v6

    .line 853
    .end local v2    # "isUnspecified":Z
    .end local v3    # "maxAvailable":I
    .end local v4    # "tempEnd":I
    .end local v5    # "tempStart":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isUnspecified":Z
    goto :goto_0

    .line 855
    :cond_5
    const/high16 v6, -0x80000000

    if-eq p1, v6, :cond_6

    const/high16 v6, -0x80000000

    if-eq p2, v6, :cond_6

    .line 857
    sub-int v6, p2, p1

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 858
    const/high16 v0, 0x40000000    # 2.0f

    .line 869
    :goto_3
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    return v6

    .line 859
    :cond_6
    if-ltz p3, :cond_7

    .line 861
    move v1, p3

    .line 862
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_3

    .line 865
    :cond_7
    const/4 v1, 0x0

    .line 866
    const/4 v0, 0x0

    goto :goto_3

    .line 890
    .restart local v3    # "maxAvailable":I
    .restart local v4    # "tempEnd":I
    .restart local v5    # "tempStart":I
    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1

    .line 893
    :cond_9
    if-ltz p3, :cond_b

    .line 895
    const/high16 v0, 0x40000000    # 2.0f

    .line 897
    if-ltz v3, :cond_a

    .line 899
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 902
    :cond_a
    move v1, p3

    goto :goto_2

    .line 904
    :cond_b
    const/4 v6, -0x1

    if-ne p3, v6, :cond_d

    .line 907
    if-eqz v2, :cond_c

    const/4 v0, 0x0

    .line 908
    :goto_4
    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 907
    :cond_c
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_4

    .line 909
    :cond_d
    const/4 v6, -0x2

    if-ne p3, v6, :cond_3

    .line 912
    if-ltz v3, :cond_e

    .line 914
    const/high16 v0, -0x80000000

    .line 915
    move v1, v3

    goto :goto_2

    .line 919
    :cond_e
    const/4 v0, 0x0

    .line 920
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private getRelatedView([II)Landroid/view/View;
    .locals 6
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    const/4 v5, 0x0

    .line 1116
    aget v0, p1, p2

    .line 1117
    .local v0, "id":I
    if-eqz v0, :cond_3

    .line 1118
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->-get0(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1119
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_0

    return-object v5

    .line 1120
    :cond_0
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1123
    .local v2, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 1124
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    .line 1125
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->-get0(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    aget v4, p1, p2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1126
    .restart local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_1

    return-object v5

    .line 1127
    :cond_1
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_0

    .line 1130
    :cond_2
    return-object v2

    .line 1133
    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    return-object v5
.end method

.method private getRelatedViewBaselineOffset([I)I
    .locals 6
    .param p1, "rules"    # [I

    .prologue
    const/4 v5, -0x1

    .line 1148
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v3

    .line 1149
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1150
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1151
    .local v1, "baseline":I
    if-eq v1, v5, :cond_0

    .line 1152
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1153
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 1154
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1155
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v1

    return v4

    .line 1159
    .end local v0    # "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "baseline":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return v5
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    const/4 v3, 0x0

    .line 1137
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v1

    .line 1138
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1139
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1140
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1141
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v2

    .line 1144
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v3
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 277
    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    .line 276
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 278
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 279
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 280
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    return-void
.end method

.method private initRelativeLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2034
    const-string/jumbo v0, "debug.layout.log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    .line 2035
    const-string/jumbo v0, "debug.layout.log.rule"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/RelativeLayout;->sDebugRule:Z

    .line 2033
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 776
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    .line 777
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 778
    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 779
    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    .line 776
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 781
    .local v10, "childWidthMeasureSpec":I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    .line 782
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 783
    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 784
    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move-object v0, p0

    move v8, p4

    .line 781
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v9

    .line 786
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 775
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 791
    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    .line 792
    move-object/from16 v0, p2

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v8, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v1, p0

    move/from16 v9, p3

    .line 791
    invoke-direct/range {v1 .. v9}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v11

    .line 796
    .local v11, "childWidthMeasureSpec":I
    if-gez p4, :cond_0

    iget-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-eqz v1, :cond_1

    .line 809
    :cond_0
    iget-boolean v1, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v1, :cond_3

    .line 810
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int v1, p4, v1

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 811
    move-object/from16 v0, p2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 810
    sub-int/2addr v1, v2

    .line 811
    move-object/from16 v0, p2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 810
    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 817
    .local v13, "maxHeight":I
    :goto_0
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 818
    const/high16 v12, 0x40000000    # 2.0f

    .line 822
    .local v12, "heightMode":I
    :goto_1
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 825
    .end local v12    # "heightMode":I
    .end local v13    # "maxHeight":I
    .local v10, "childHeightMeasureSpec":I
    :goto_2
    invoke-virtual {p1, v11, v10}, Landroid/view/View;->measure(II)V

    .line 790
    return-void

    .line 797
    .end local v10    # "childHeightMeasureSpec":I
    :cond_1
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v1, :cond_2

    .line 799
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 798
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childHeightMeasureSpec":I
    goto :goto_2

    .line 805
    .end local v10    # "childHeightMeasureSpec":I
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childHeightMeasureSpec":I
    goto :goto_2

    .line 813
    .end local v10    # "childHeightMeasureSpec":I
    :cond_3
    const/4 v1, 0x0

    move/from16 v0, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .restart local v13    # "maxHeight":I
    goto :goto_0

    .line 820
    :cond_4
    const/high16 v12, -0x80000000

    .restart local v12    # "heightMode":I
    goto :goto_1
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, -0x80000000

    .line 931
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    .line 932
    .local v0, "layoutDirection":I
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    .line 934
    .local v1, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 936
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 962
    :cond_0
    :goto_0
    const/16 v4, 0x15

    aget v4, v1, v4

    if-eqz v4, :cond_7

    :goto_1
    return v2

    .line 937
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-eq v4, v5, :cond_2

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 939
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 940
    :cond_2
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 942
    const/16 v4, 0xd

    aget v4, v1, v4

    if-nez v4, :cond_3

    const/16 v4, 0xe

    aget v4, v1, v4

    if-eqz v4, :cond_5

    .line 943
    :cond_3
    if-nez p4, :cond_4

    .line 944
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 949
    :goto_2
    return v2

    .line 946
    :cond_4
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 947
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 953
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 954
    iget v4, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v4, p3, v4

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 955
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 957
    :cond_6
    iget v4, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 958
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 962
    goto/16 :goto_1
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myHeight"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    .line 968
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 970
    .local v0, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 972
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 991
    :cond_0
    :goto_0
    const/16 v3, 0xc

    aget v3, v0, v3

    if-eqz v3, :cond_6

    :goto_1
    return v1

    .line 973
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 975
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 976
    :cond_2
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 978
    const/16 v3, 0xd

    aget v3, v0, v3

    if-nez v3, :cond_3

    const/16 v3, 0xf

    aget v3, v0, v3

    if-eqz v3, :cond_5

    .line 979
    :cond_3
    if-nez p4, :cond_4

    .line 980
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 985
    :goto_2
    return v1

    .line 982
    :cond_4
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 983
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 987
    :cond_5
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 988
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    :cond_6
    move v1, v2

    .line 991
    goto :goto_1
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 285
    .local v0, "version":I
    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 286
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 283
    return-void

    :cond_0
    move v1, v3

    .line 285
    goto :goto_0

    :cond_1
    move v2, v3

    .line 286
    goto :goto_1
.end method

.method private sortChildren()V
    .locals 5

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 387
    .local v0, "count":I
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_1

    .line 388
    :cond_0
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 391
    :cond_1
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_3

    .line 392
    :cond_2
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 395
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 396
    .local v1, "graph":Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 398
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 399
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    :cond_4
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 403
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 385
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1212
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1223
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v4, :cond_0

    .line 1224
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    invoke-direct {v5, p0, v7}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1228
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1229
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1232
    :cond_1
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "view$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1233
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1234
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 1233
    if-eqz v4, :cond_2

    .line 1235
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1236
    const/4 v4, 0x1

    return v4

    .line 1240
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1241
    return v6
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1206
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1195
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1217
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1196
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1246
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1182
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 1184
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1185
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1186
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1188
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1189
    .local v3, "st":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1184
    .end local v3    # "st":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1179
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    if-eqz v4, :cond_0

    .line 409
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 410
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 413
    :cond_0
    const/16 v30, -0x1

    .line 414
    .local v30, "myWidth":I
    const/16 v29, -0x1

    .line 416
    .local v29, "myHeight":I
    const/16 v42, 0x0

    .line 417
    .local v42, "width":I
    const/16 v19, 0x0

    .line 419
    .local v19, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    .line 420
    .local v43, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 421
    .local v20, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v44

    .line 422
    .local v44, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 425
    .local v21, "heightSize":I
    if-eqz v43, :cond_1

    .line 426
    move/from16 v30, v44

    .line 429
    :cond_1
    if-eqz v20, :cond_2

    .line 430
    move/from16 v29, v21

    .line 433
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-ne v0, v4, :cond_3

    .line 434
    move/from16 v42, v30

    .line 437
    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-ne v0, v4, :cond_4

    .line 438
    move/from16 v19, v29

    .line 441
    :cond_4
    const/16 v25, 0x0

    .line 442
    .local v25, "ignore":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v5, 0x800007

    and-int v18, v4, v5

    .line 443
    .local v18, "gravity":I
    const v4, 0x800003

    move/from16 v0, v18

    if-eq v0, v4, :cond_f

    if-eqz v18, :cond_f

    const/16 v22, 0x1

    .line 444
    .local v22, "horizontalGravity":Z
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v18, v4, 0x70

    .line 445
    const/16 v4, 0x30

    move/from16 v0, v18

    if-eq v0, v4, :cond_10

    if-eqz v18, :cond_10

    const/16 v39, 0x1

    .line 447
    .local v39, "verticalGravity":Z
    :goto_1
    const v28, 0x7fffffff

    .line 448
    .local v28, "left":I
    const v38, 0x7fffffff

    .line 449
    .local v38, "top":I
    const/high16 v35, -0x80000000

    .line 450
    .local v35, "right":I
    const/high16 v12, -0x80000000

    .line 452
    .local v12, "bottom":I
    const/16 v31, 0x0

    .line 453
    .local v31, "offsetHorizontalAxis":Z
    const/16 v32, 0x0

    .line 455
    .local v32, "offsetVerticalAxis":Z
    if-nez v22, :cond_5

    if-eqz v39, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 456
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 459
    .end local v25    # "ignore":Landroid/view/View;
    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-eq v0, v4, :cond_11

    const/16 v27, 0x1

    .line 460
    .local v27, "isWrapContentWidth":Z
    :goto_2
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-eq v0, v4, :cond_12

    const/16 v26, 0x1

    .line 467
    .local v26, "isWrapContentHeight":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v9

    .line 468
    .local v9, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_8

    .line 469
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_7

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_7

    .line 470
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] + Pass.1 (RtL), this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_7
    const/high16 v30, 0x10000

    .line 473
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_8

    .line 474
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] - Pass.1, this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 475
    const-string/jumbo v6, ", myWidth="

    .line 474
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 475
    const-string/jumbo v6, ", myHeight="

    .line 474
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    .line 480
    .local v41, "views":[Landroid/view/View;
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    .line 482
    .local v17, "count":I
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_9

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_9

    .line 483
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] + Pass.2 (Horizontal measure), this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_9
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    .line 488
    aget-object v13, v41, v24

    .line 489
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_e

    .line 490
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_a

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_a

    .line 491
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] + Child in Pass2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 492
    const-string/jumbo v6, ", child="

    .line 491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 492
    const-string/jumbo v6, ", this="

    .line 491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_a
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 495
    .local v34, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 497
    .local v36, "rules":[I
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_b

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugRule:Z

    if-eqz v4, :cond_b

    .line 498
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] + Child_horizontal: i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 499
    const-string/jumbo v6, "params(L,R,T,B) = "

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 499
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 499
    const-string/jumbo v6, ","

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 499
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 499
    const-string/jumbo v6, ","

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 500
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 500
    const-string/jumbo v6, ","

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 500
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 500
    const-string/jumbo v6, ", "

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 501
    const-string/jumbo v6, "params(width,height) = "

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 501
    move-object/from16 v0, v34

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 501
    const-string/jumbo v6, " , "

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 501
    move-object/from16 v0, v34

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 502
    const-string/jumbo v6, ", "

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 502
    const-string/jumbo v6, "child = "

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 502
    const-string/jumbo v6, ", this = "

    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 505
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_c

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugRule:Z

    if-eqz v4, :cond_c

    .line 506
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] - Child_horizontal: i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 507
    const-string/jumbo v6, "params(L,R,T,B) = "

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 507
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 507
    const-string/jumbo v6, ","

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 507
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 507
    const-string/jumbo v6, ","

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 508
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 508
    const-string/jumbo v6, ","

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 508
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 508
    const-string/jumbo v6, ", "

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 508
    const-string/jumbo v6, "child = "

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 509
    const-string/jumbo v6, ", this = "

    .line 506
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v27

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 514
    const/16 v31, 0x1

    .line 516
    :cond_d
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_e

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_e

    .line 517
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] - Child in Pass2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 518
    const-string/jumbo v6, ", child="

    .line 517
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 518
    const-string/jumbo v6, ", this="

    .line 517
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 443
    .end local v9    # "layoutDirection":I
    .end local v12    # "bottom":I
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "count":I
    .end local v22    # "horizontalGravity":Z
    .end local v24    # "i":I
    .end local v26    # "isWrapContentHeight":Z
    .end local v27    # "isWrapContentWidth":Z
    .end local v28    # "left":I
    .end local v31    # "offsetHorizontalAxis":Z
    .end local v32    # "offsetVerticalAxis":Z
    .end local v35    # "right":I
    .end local v38    # "top":I
    .end local v39    # "verticalGravity":Z
    .end local v41    # "views":[Landroid/view/View;
    .restart local v25    # "ignore":Landroid/view/View;
    :cond_f
    const/16 v22, 0x0

    .restart local v22    # "horizontalGravity":Z
    goto/16 :goto_0

    .line 445
    :cond_10
    const/16 v39, 0x0

    .restart local v39    # "verticalGravity":Z
    goto/16 :goto_1

    .line 459
    .end local v25    # "ignore":Landroid/view/View;
    .restart local v12    # "bottom":I
    .restart local v28    # "left":I
    .restart local v31    # "offsetHorizontalAxis":Z
    .restart local v32    # "offsetVerticalAxis":Z
    .restart local v35    # "right":I
    .restart local v38    # "top":I
    :cond_11
    const/16 v27, 0x0

    .restart local v27    # "isWrapContentWidth":Z
    goto/16 :goto_2

    .line 460
    :cond_12
    const/16 v26, 0x0

    .restart local v26    # "isWrapContentHeight":Z
    goto/16 :goto_3

    .line 523
    .restart local v9    # "layoutDirection":I
    .restart local v17    # "count":I
    .restart local v24    # "i":I
    .restart local v41    # "views":[Landroid/view/View;
    :cond_13
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_14

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_14

    .line 524
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] - Pass.2, this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    .line 529
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    .line 530
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v37, v0

    .line 532
    .local v37, "targetSdkVersion":I
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_15

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_15

    .line 533
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] + Pass.3 (Vertical measure), this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_15
    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_25

    .line 538
    aget-object v13, v41, v24

    .line 539
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_20

    .line 540
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_16

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_16

    .line 541
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] + Child in Pass3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 542
    const-string/jumbo v6, ", child="

    .line 541
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 542
    const-string/jumbo v6, ", this="

    .line 541
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_16
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 546
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_17

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugRule:Z

    if-eqz v4, :cond_17

    .line 547
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] + Child_vertical: i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 548
    const-string/jumbo v6, "params(L,R,T,B) = "

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 548
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 548
    const-string/jumbo v6, ","

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 548
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 548
    const-string/jumbo v6, ","

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 549
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 549
    const-string/jumbo v6, ","

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 549
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 549
    const-string/jumbo v6, ", "

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 550
    const-string/jumbo v6, "params(width,height) = "

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 550
    move-object/from16 v0, v34

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 550
    const-string/jumbo v6, " , "

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 550
    move-object/from16 v0, v34

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 551
    const-string/jumbo v6, ", "

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 551
    const-string/jumbo v6, "child = "

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 551
    const-string/jumbo v6, ", this = "

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_17
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 554
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_18

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugRule:Z

    if-eqz v4, :cond_18

    .line 555
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] - Child_vertical: i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 556
    const-string/jumbo v6, "params(L,R,T,B) = "

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 556
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 556
    const-string/jumbo v6, ","

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 556
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 556
    const-string/jumbo v6, ","

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 557
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 557
    const-string/jumbo v6, ","

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 557
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 557
    const-string/jumbo v6, ", "

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 557
    const-string/jumbo v6, "child = "

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 558
    const-string/jumbo v6, ", this = "

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 561
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 562
    const/16 v32, 0x1

    .line 565
    :cond_19
    if-eqz v27, :cond_1a

    .line 566
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 567
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_21

    .line 568
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 581
    :cond_1a
    :goto_6
    if-eqz v26, :cond_1b

    .line 582
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_24

    .line 583
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 589
    :cond_1b
    :goto_7
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_1c

    if-eqz v39, :cond_1d

    .line 590
    :cond_1c
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 591
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v38

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v38

    .line 594
    :cond_1d
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_1e

    if-eqz v22, :cond_1f

    .line 595
    :cond_1e
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 596
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 598
    :cond_1f
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_20

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_20

    .line 599
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] - Child in Pass3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 600
    const-string/jumbo v6, ", child="

    .line 599
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 600
    const-string/jumbo v6, ", this="

    .line 599
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_20
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 570
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_21
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto/16 :goto_6

    .line 573
    :cond_22
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_23

    .line 574
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto/16 :goto_6

    .line 576
    :cond_23
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto/16 :goto_6

    .line 585
    :cond_24
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_7

    .line 605
    .end local v13    # "child":Landroid/view/View;
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_25
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_26

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_26

    .line 606
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] - Pass.3, this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 607
    const-string/jumbo v6, "width = "

    .line 606
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 607
    const-string/jumbo v6, ", height = "

    .line 606
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 607
    const-string/jumbo v6, ", "

    .line 606
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 607
    const-string/jumbo v6, "left="

    .line 606
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 608
    const-string/jumbo v6, ", right="

    .line 606
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 608
    const-string/jumbo v6, ", top="

    .line 606
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 608
    const-string/jumbo v6, ", bottom="

    .line 606
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_26
    const/4 v11, 0x0

    .line 615
    .local v11, "baselineView":Landroid/view/View;
    const/4 v10, 0x0

    .line 616
    .local v10, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x0

    .end local v10    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "baselineView":Landroid/view/View;
    :goto_8
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_2a

    .line 617
    aget-object v13, v41, v24

    .line 618
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_28

    .line 619
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 620
    .local v15, "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v11, :cond_27

    if-nez v10, :cond_29

    .line 622
    :cond_27
    :goto_9
    move-object v11, v13

    .line 623
    .local v11, "baselineView":Landroid/view/View;
    move-object v10, v15

    .line 616
    .end local v11    # "baselineView":Landroid/view/View;
    .end local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_28
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 621
    .restart local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_29
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-gez v4, :cond_28

    goto :goto_9

    .line 627
    .end local v13    # "child":Landroid/view/View;
    .end local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2a
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 629
    if-eqz v27, :cond_31

    .line 630
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_2b

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_2b

    .line 631
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] + Pass.5 (WrapContentWidth), this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int v42, v42, v4

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_2c

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 641
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 642
    move/from16 v0, v42

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v42

    .line 644
    if-eqz v31, :cond_30

    .line 645
    const/16 v24, 0x0

    :goto_a
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_30

    .line 646
    aget-object v13, v41, v24

    .line 647
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2e

    .line 648
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 649
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 650
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_2d

    const/16 v4, 0xe

    aget v4, v36, v4

    if-eqz v4, :cond_2f

    .line 651
    :cond_2d
    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 645
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_2e
    :goto_b
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 652
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_2f
    const/16 v4, 0xb

    aget v4, v36, v4

    if-eqz v4, :cond_2e

    .line 653
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 654
    .local v16, "childWidth":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v4, v42, v4

    sub-int v4, v4, v16

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 655
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v16

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_b

    .line 661
    .end local v13    # "child":Landroid/view/View;
    .end local v16    # "childWidth":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_30
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_31

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_31

    .line 662
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] - Pass.5, this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 663
    const-string/jumbo v6, ", height="

    .line 662
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_31
    if-eqz v26, :cond_38

    .line 669
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_32

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_32

    .line 670
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] + Pass.6 (WrapContentHeight), this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_32
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int v19, v19, v4

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_33

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 681
    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 682
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v19

    .line 684
    if-eqz v32, :cond_37

    .line 685
    const/16 v24, 0x0

    :goto_c
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_37

    .line 686
    aget-object v13, v41, v24

    .line 687
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_35

    .line 688
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 689
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 690
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_34

    const/16 v4, 0xf

    aget v4, v36, v4

    if-eqz v4, :cond_36

    .line 691
    :cond_34
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 685
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_35
    :goto_d
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 692
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_36
    const/16 v4, 0xc

    aget v4, v36, v4

    if-eqz v4, :cond_35

    .line 693
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 694
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v4, v19, v4

    sub-int/2addr v4, v14

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 695
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_d

    .line 701
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "childHeight":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_37
    sget-boolean v4, Landroid/widget/RelativeLayout;->DBG:Z

    if-eqz v4, :cond_38

    sget-boolean v4, Landroid/widget/RelativeLayout;->sDebugLayout:Z

    if-eqz v4, :cond_38

    .line 702
    const-string/jumbo v4, "Layout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[RelativeLayout] - Pass.6, this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 703
    const-string/jumbo v6, ", width="

    .line 702
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 703
    const-string/jumbo v6, ", height="

    .line 702
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_38
    if-nez v22, :cond_39

    if-eqz v39, :cond_3d

    .line 708
    :cond_39
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 709
    .local v7, "selfBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v6, v42, v6

    .line 710
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move/from16 v45, v0

    sub-int v45, v19, v45

    .line 709
    move/from16 v0, v45

    invoke-virtual {v7, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 712
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 713
    .local v8, "contentBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v5, v35, v28

    sub-int v6, v12, v38

    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 716
    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int v23, v4, v28

    .line 717
    .local v23, "horizontalOffset":I
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v40, v4, v38

    .line 718
    .local v40, "verticalOffset":I
    if-nez v23, :cond_3a

    if-eqz v40, :cond_3d

    .line 719
    :cond_3a
    const/16 v24, 0x0

    :goto_e
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_3d

    .line 720
    aget-object v13, v41, v24

    .line 721
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    move-object/from16 v0, v25

    if-eq v13, v0, :cond_3c

    .line 722
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 723
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v22, :cond_3b

    .line 724
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v23

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 725
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v23

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 727
    :cond_3b
    if-eqz v39, :cond_3c

    .line 728
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v40

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 729
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v40

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 719
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3c
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 736
    .end local v7    # "selfBounds":Landroid/graphics/Rect;
    .end local v8    # "contentBounds":Landroid/graphics/Rect;
    .end local v13    # "child":Landroid/view/View;
    .end local v23    # "horizontalOffset":I
    .end local v40    # "verticalOffset":I
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 737
    sub-int v33, v30, v42

    .line 738
    .local v33, "offsetWidth":I
    const/16 v24, 0x0

    :goto_f
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_3f

    .line 739
    aget-object v13, v41, v24

    .line 740
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3e

    .line 741
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 742
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v4, v33

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 743
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v4, v33

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 738
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3e
    add-int/lit8 v24, v24, 0x1

    goto :goto_f

    .line 748
    .end local v13    # "child":Landroid/view/View;
    .end local v33    # "offsetWidth":I
    :cond_3f
    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 407
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 381
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 380
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 342
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 343
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 344
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 347
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 348
    or-int/lit8 p1, p1, 0x30

    .line 351
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 352
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 341
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

    .line 358
    and-int v0, p1, v2

    .line 359
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 360
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 361
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 357
    :cond_0
    return-void
.end method

.method public setIgnoreGravity(I)V
    .locals 0
    .param p1, "viewId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 307
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 306
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 367
    and-int/lit8 v0, p1, 0x70

    .line 368
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 369
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 370
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 366
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method
