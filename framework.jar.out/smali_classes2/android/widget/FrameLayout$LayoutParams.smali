.class public Landroid/widget/FrameLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 517
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 516
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 533
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 534
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 532
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 506
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 500
    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 508
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 509
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 510
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 505
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 541
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 540
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 548
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 547
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 558
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 560
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 557
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "FrameLayout.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/FrameLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    const-string/jumbo v1, ", height="

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/FrameLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    const-string/jumbo v1, ", leftMargin="

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    const-string/jumbo v1, ", rightMargin="

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    const-string/jumbo v1, ", topMargin="

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    const-string/jumbo v1, ", bottomMargin="

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", gravity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    const-string/jumbo v1, " }"

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
