.class Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Llenovo/widget/AutoScrollHelper;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/AutoScrollHelper;

    .prologue
    .line 682
    iput-object p1, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/AutoScrollHelper;Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/AutoScrollHelper;

    .prologue
    invoke-direct {p0, p1}, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Llenovo/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 685
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3}, Llenovo/widget/AutoScrollHelper;->-get0(Llenovo/widget/AutoScrollHelper;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    return-void

    .line 689
    :cond_0
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3}, Llenovo/widget/AutoScrollHelper;->-get2(Llenovo/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Llenovo/widget/AutoScrollHelper;->-set2(Llenovo/widget/AutoScrollHelper;Z)Z

    .line 691
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3}, Llenovo/widget/AutoScrollHelper;->-get3(Llenovo/widget/AutoScrollHelper;)Llenovo/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v3

    invoke-virtual {v3}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->start()V

    .line 694
    :cond_1
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3}, Llenovo/widget/AutoScrollHelper;->-get3(Llenovo/widget/AutoScrollHelper;)Llenovo/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v2

    .line 695
    .local v2, "scroller":Llenovo/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v2}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3}, Llenovo/widget/AutoScrollHelper;->-wrap0(Llenovo/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 700
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3}, Llenovo/widget/AutoScrollHelper;->-get1(Llenovo/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 701
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Llenovo/widget/AutoScrollHelper;->-set1(Llenovo/widget/AutoScrollHelper;Z)Z

    .line 702
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3}, Llenovo/widget/AutoScrollHelper;->-wrap3(Llenovo/widget/AutoScrollHelper;)V

    .line 705
    :cond_2
    invoke-virtual {v2}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 707
    invoke-virtual {v2}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v0

    .line 708
    .local v0, "deltaX":I
    invoke-virtual {v2}, Llenovo/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v1

    .line 709
    .local v1, "deltaY":I
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-virtual {v3, v0, v1}, Llenovo/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 712
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3}, Llenovo/widget/AutoScrollHelper;->-get4(Llenovo/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 684
    return-void

    .line 696
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :cond_3
    iget-object v3, p0, Llenovo/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Llenovo/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Llenovo/widget/AutoScrollHelper;->-set0(Llenovo/widget/AutoScrollHelper;Z)Z

    .line 697
    return-void
.end method
