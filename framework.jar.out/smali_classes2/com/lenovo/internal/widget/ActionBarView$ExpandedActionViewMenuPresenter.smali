.class Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/lenovo/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/lenovo/internal/widget/ActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/internal/widget/ActionBarView;Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/lenovo/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1832
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1836
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1841
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get12(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->-get3(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1842
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iput-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1847
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get2(Lcom/lenovo/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 1848
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get2(Lcom/lenovo/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get5(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1852
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get2(Lcom/lenovo/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1853
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get11(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1854
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-wrap0(Lcom/lenovo/internal/widget/ActionBarView;)V

    .line 1859
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get10(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get10(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1860
    :cond_4
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get9(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get9(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1861
    :cond_5
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get1(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get1(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1863
    :cond_6
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get3(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1864
    iput-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 1865
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->-get13(Lcom/lenovo/internal/widget/ActionBarView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 1866
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarView;->requestLayout()V

    .line 1867
    invoke-virtual {p2, v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1869
    const/4 v0, 0x1

    return v0

    .line 1856
    :cond_7
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get11(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1803
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1804
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1805
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get6(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get3(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->-get6(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1807
    :cond_0
    iput-object p2, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 1808
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_1

    .line 1809
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1811
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get3(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->-get12(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1812
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get12(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->-get3(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1814
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get5(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1815
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get11(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get11(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1816
    :cond_3
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get10(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get10(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1817
    :cond_4
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get9(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get9(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1818
    :cond_5
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get1(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->-get1(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1819
    :cond_6
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0, v4, v4}, Lcom/lenovo/internal/widget/ActionBarView;->-wrap1(Lcom/lenovo/internal/widget/ActionBarView;ZZ)V

    .line 1820
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarView;->requestLayout()V

    .line 1821
    invoke-virtual {p2, v5}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1823
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_7

    .line 1824
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1827
    :cond_7
    return v5
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1797
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1874
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1755
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    .line 1750
    :cond_0
    iput-object p2, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 1745
    return-void
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1792
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1883
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1879
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1788
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1783
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1761
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1762
    const/4 v1, 0x0

    .line 1764
    .local v1, "found":Z
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1765
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1766
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1767
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/view/SupportMenuItem;

    .line 1768
    .local v3, "item":Lcom/lenovo/internal/view/SupportMenuItem;
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1769
    const/4 v1, 0x1

    .line 1775
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/lenovo/internal/view/SupportMenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1777
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    .line 1759
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1766
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/lenovo/internal/view/SupportMenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
