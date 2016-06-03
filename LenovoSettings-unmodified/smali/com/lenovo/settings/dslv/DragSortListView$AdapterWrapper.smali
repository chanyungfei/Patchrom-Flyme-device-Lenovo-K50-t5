.class Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/lenovo/settings/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    .line 619
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 620
    iput-object p2, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 622
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper$1;-><init>(Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;Lcom/lenovo/settings/dslv/DragSortListView;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 634
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 642
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 689
    if-eqz p2, :cond_5

    move-object v3, p2

    .line 690
    check-cast v3, Lcom/lenovo/settings/dslv/DragSortItemView;

    .line 691
    .local v3, "v":Lcom/lenovo/settings/dslv/DragSortItemView;
    invoke-virtual {v3, v7}, Lcom/lenovo/settings/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 694
    .local v1, "oldChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 695
    const-string v4, "DragSortListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldChild "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_0
    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-interface {v4, p1, v1, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 701
    .local v0, "child":Landroid/view/View;
    const-string v4, "DragSortListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eq v0, v1, :cond_1

    .line 704
    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {v3, v7}, Lcom/lenovo/settings/dslv/DragSortItemView;->removeViewAt(I)V

    .line 709
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 710
    .local v2, "p":Landroid/view/ViewParent;
    if-eqz v2, :cond_4

    .line 711
    const-string v4, "DragSortListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child.getParent() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "p":Landroid/view/ViewParent;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 717
    :goto_1
    invoke-virtual {v3, v0}, Lcom/lenovo/settings/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    .line 734
    .end local v1    # "oldChild":Landroid/view/View;
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    const/4 v6, 0x1

    # invokes: Lcom/lenovo/settings/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V
    invoke-static {v4, v5, v3, v6}, Lcom/lenovo/settings/dslv/DragSortListView;->access$200(Lcom/lenovo/settings/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 736
    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 737
    invoke-virtual {v3, v7}, Lcom/lenovo/settings/dslv/DragSortItemView;->setClickable(Z)V

    .line 740
    :cond_2
    return-object v3

    .line 697
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "oldChild":Landroid/view/View;
    :cond_3
    const-string v4, "DragSortListView"

    const-string v5, "oldChild is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "p":Landroid/view/ViewParent;
    :cond_4
    const-string v4, "DragSortListView"

    const-string v5, "child has no parent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 720
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "oldChild":Landroid/view/View;
    .end local v2    # "p":Landroid/view/ViewParent;
    .end local v3    # "v":Lcom/lenovo/settings/dslv/DragSortItemView;
    :cond_5
    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-interface {v4, p1, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 721
    .restart local v0    # "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/Checkable;

    if-eqz v4, :cond_6

    .line 722
    new-instance v3, Lcom/lenovo/settings/dslv/DragSortItemViewCheckable;

    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/lenovo/settings/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lenovo/settings/dslv/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    .line 726
    .restart local v3    # "v":Lcom/lenovo/settings/dslv/DragSortItemView;
    :goto_3
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/lenovo/settings/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    invoke-virtual {v3, v0}, Lcom/lenovo/settings/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 724
    .end local v3    # "v":Lcom/lenovo/settings/dslv/DragSortItemView;
    :cond_6
    new-instance v3, Lcom/lenovo/settings/dslv/DragSortItemView;

    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/lenovo/settings/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lenovo/settings/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    .restart local v3    # "v":Lcom/lenovo/settings/dslv/DragSortItemView;
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 662
    const/4 v0, 0x1

    return v0
.end method
