.class Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 228
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 227
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 266
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget-object v5, v5, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 267
    .local v1, "expandedItem":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 268
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget-object v5, v5, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 269
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 270
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 271
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 272
    .local v3, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 273
    iput v2, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 274
    return-void

    .line 270
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 265
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 232
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget-object v2, v2, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 233
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-static {v3}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->-get0(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)I

    move-result v3

    sub-int v0, v2, v3

    .line 234
    .local v0, "count":I
    iget v2, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_0

    .line 235
    return v0

    .line 237
    :cond_0
    add-int/lit8 v2, v0, -0x1

    return v2
.end method

.method public getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-static {v1}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->-get0(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)I

    move-result v1

    add-int/2addr p1, v1

    .line 243
    iget v1, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 244
    add-int/lit8 p1, p1, 0x1

    .line 246
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 252
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 256
    if-nez p2, :cond_0

    .line 257
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget v2, v2, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 260
    check-cast v0, Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    .line 261
    .local v0, "itemView":Lcom/lenovo/internal/view/menu/MenuView$ItemView;
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/lenovo/internal/view/menu/MenuView$ItemView;->initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V

    .line 262
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 284
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 282
    return-void
.end method
