.class Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;
.super Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback$1;
    }
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;


# direct methods
.method static synthetic -wrap0(Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->peekDrawer()V

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/component/slidemenu/DrawerLayout;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/lenovo/component/slidemenu/DrawerLayout;
    .param p2, "gravity"    # I

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/ViewDragHelper$Callback;-><init>()V

    .line 1537
    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback$1;

    invoke-direct {v0, p0}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback$1;-><init>(Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;)V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    .line 1544
    iput p2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 1543
    return-void
.end method

.method private closeOtherDrawer()V
    .locals 4

    .prologue
    .line 1594
    iget v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x5

    .line 1595
    .local v0, "otherGrav":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v2, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 1596
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1597
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v2, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1593
    :cond_0
    return-void

    .line 1594
    .end local v0    # "otherGrav":I
    .end local v1    # "toClose":Landroid/view/View;
    :cond_1
    const/4 v0, 0x3

    .restart local v0    # "otherGrav":I
    goto :goto_0
.end method

.method private peekDrawer()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    .line 1628
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v6}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->getEdgeSize()I

    move-result v3

    .line 1629
    .local v3, "peekDistance":I
    iget v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-ne v6, v7, :cond_2

    const/4 v1, 0x1

    .line 1630
    .local v1, "leftEdge":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 1631
    iget-object v6, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v6, v7}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    .line 1632
    .local v4, "toCapture":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    :cond_0
    add-int v0, v5, v3

    .line 1638
    .local v0, "childLeft":I
    :goto_1
    if-eqz v4, :cond_1

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ge v5, v0, :cond_4

    .line 1640
    :goto_2
    iget-object v5, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v5, v4}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1641
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 1642
    .local v2, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    iget-object v5, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v4, v0, v6}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1643
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1644
    iget-object v5, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v5}, Lcom/lenovo/component/slidemenu/DrawerLayout;->invalidate()V

    .line 1646
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 1648
    iget-object v5, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v5}, Lcom/lenovo/component/slidemenu/DrawerLayout;->cancelChildViewTouch()V

    .line 1625
    .end local v2    # "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    :cond_1
    return-void

    .line 1629
    .end local v0    # "childLeft":I
    .end local v1    # "leftEdge":Z
    .end local v4    # "toCapture":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "leftEdge":Z
    goto :goto_0

    .line 1634
    :cond_3
    iget-object v5, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    .line 1635
    .restart local v4    # "toCapture":Landroid/view/View;
    iget-object v5, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v5}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getWidth()I

    move-result v5

    sub-int v0, v5, v3

    .restart local v0    # "childLeft":I
    goto :goto_1

    .line 1639
    :cond_4
    if-nez v1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v0, :cond_1

    goto :goto_2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 1685
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1686
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1688
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getWidth()I

    move-result v0

    .line 1689
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1695
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1680
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 3
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1667
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1668
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1673
    .local v0, "toCapture":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1674
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v1, v0, p2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1665
    :cond_0
    return-void

    .line 1670
    .end local v0    # "toCapture":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "toCapture":Landroid/view/View;
    goto :goto_0
.end method

.method public onEdgeLock(I)Z
    .locals 1
    .param p1, "edgeFlags"    # I

    .prologue
    .line 1661
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 4
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1621
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 1587
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;

    .line 1588
    .local v0, "lp":Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/component/slidemenu/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1590
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 1586
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    iget v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {v2}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1564
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 1571
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1574
    .local v0, "childWidth":I
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1575
    add-int v3, v0, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 1580
    .local v1, "offset":F
    :goto_0
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v3, p1, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1581
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->invalidate()V

    .line 1569
    return-void

    .line 1577
    .end local v1    # "offset":F
    :cond_0
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v3}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getWidth()I

    move-result v2

    .line 1578
    .local v2, "width":I
    sub-int v3, v2, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .restart local v1    # "offset":F
    goto :goto_0

    .line 1581
    .end local v2    # "width":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 1605
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v4, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    .line 1606
    .local v2, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1609
    .local v0, "childWidth":I
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1610
    cmpl-float v4, p2, v6

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v6

    if-nez v4, :cond_1

    cmpl-float v4, v2, v7

    if-lez v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1616
    .local v1, "left":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1617
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v4}, Lcom/lenovo/component/slidemenu/DrawerLayout;->invalidate()V

    .line 1602
    return-void

    .line 1610
    .end local v1    # "left":I
    :cond_1
    neg-int v1, v0

    .restart local v1    # "left":I
    goto :goto_0

    .line 1612
    .end local v1    # "left":I
    :cond_2
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v4}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getWidth()I

    move-result v3

    .line 1613
    .local v3, "width":I
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_3

    cmpl-float v4, p2, v6

    if-nez v4, :cond_4

    cmpl-float v4, v2, v7

    if-lez v4, :cond_4

    :cond_3
    sub-int v1, v3, v0

    .restart local v1    # "left":I
    goto :goto_0

    .end local v1    # "left":I
    :cond_4
    move v1, v3

    .restart local v1    # "left":I
    goto :goto_0
.end method

.method public removeCallbacks()V
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1551
    return-void
.end method

.method public setDragger(Lcom/lenovo/component/slidemenu/ViewDragHelper;)V
    .locals 0
    .param p1, "dragger"    # Lcom/lenovo/component/slidemenu/ViewDragHelper;

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mDragger:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    .line 1547
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1559
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v1, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    iget v2, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1560
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v1, p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1559
    :cond_0
    return v0
.end method
