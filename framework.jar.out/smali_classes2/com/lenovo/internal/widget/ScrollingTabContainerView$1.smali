.class Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

.field final synthetic val$position:I

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .param p2, "val$tabView"    # Landroid/view/View;
    .param p3, "val$position"    # I

    .prologue
    .line 387
    iput-object p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    iput p3, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget-boolean v1, v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 397
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 409
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 410
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 411
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget v2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$position:I

    invoke-static {v1, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->-set0(Lcom/lenovo/internal/widget/ScrollingTabContainerView;I)I

    .line 388
    return-void

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-static {v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->-get1(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 401
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->-get1(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->val$position:I

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->-get1(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
