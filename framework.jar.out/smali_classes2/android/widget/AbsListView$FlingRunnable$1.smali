.class Landroid/widget/AbsListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsListView$FlingRunnable;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$FlingRunnable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AbsListView$FlingRunnable;

    .prologue
    .line 4821
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 4824
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-get1(Landroid/widget/AbsListView;)I

    move-result v0

    .line 4825
    .local v0, "activeId":I
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-get17(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    .line 4826
    .local v2, "vt":Landroid/view/VelocityTracker;
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v4}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    .line 4827
    .local v1, "scroller":Landroid/widget/OverScroller;
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 4828
    :cond_0
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/widget/AbsListView;->-get18()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4829
    const-string/jumbo v4, "AbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Direct return : vt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",activeId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4830
    const-string/jumbo v6, ",mScrollY = "

    .line 4829
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4830
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get15(Landroid/widget/AbsListView;)I

    move-result v6

    .line 4829
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    :cond_1
    return-void

    .line 4835
    :cond_2
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-get9(Landroid/widget/AbsListView;)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4836
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v3, v4

    .line 4838
    .local v3, "yvel":F
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/widget/AbsListView;->-get20()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4839
    const-string/jumbo v4, "AbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fly wheel: yvel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",activeId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4840
    const-string/jumbo v6, ",mScrollY = "

    .line 4839
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4840
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get15(Landroid/widget/AbsListView;)I

    move-result v6

    .line 4839
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4840
    const-string/jumbo v6, ",mTouchMode = "

    .line 4839
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4840
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4839
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4841
    const-string/jumbo v6, ",mMinimumVelocity = "

    .line 4839
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4841
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get10(Landroid/widget/AbsListView;)I

    move-result v6

    .line 4839
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4841
    const-string/jumbo v6, ",ListView = "

    .line 4839
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4842
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 4839
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get10(Landroid/widget/AbsListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 4846
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/widget/OverScroller;->isScrollingInDirection(FF)Z

    move-result v4

    .line 4845
    if-eqz v4, :cond_4

    .line 4848
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-wide/16 v6, 0x28

    invoke-virtual {v4, p0, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4823
    :goto_0
    return-void

    .line 4850
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4851
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v5, 0x3

    iput v5, v4, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4852
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
