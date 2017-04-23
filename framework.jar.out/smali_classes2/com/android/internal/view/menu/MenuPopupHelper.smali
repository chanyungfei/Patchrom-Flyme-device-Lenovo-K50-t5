.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x109009a


# instance fields
.field private final mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v4, 0x0

    .line 80
    const/4 v3, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 84
    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .prologue
    .line 89
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 94
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 97
    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 98
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 99
    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 100
    iput p6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    .line 104
    const v2, 0x105000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 106
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 109
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method private measureContentWidth()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 219
    const/4 v7, 0x0

    .line 220
    .local v7, "maxWidth":I
    const/4 v5, 0x0

    .line 221
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 223
    .local v4, "itemType":I
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 224
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 225
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 226
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 227
    .local v1, "count":I
    const/4 v3, 0x0

    .end local v5    # "itemView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 228
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 229
    .local v8, "positionType":I
    if-eq v8, v4, :cond_0

    .line 230
    move v4, v8

    .line 231
    const/4 v5, 0x0

    .line 234
    :cond_0
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_1

    .line 235
    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 238
    :cond_1
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 239
    .local v5, "itemView":Landroid/view/View;
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 241
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 242
    .local v6, "itemWidth":I
    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    if-lt v6, v10, :cond_2

    .line 243
    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    return v10

    .line 244
    :cond_2
    if-le v6, v7, :cond_3

    .line 245
    move v7, v6

    .line 227
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "itemWidth":I
    .end local v8    # "positionType":I
    :cond_4
    return v7
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 180
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 279
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 335
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 330
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 189
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 190
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 193
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 187
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 256
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 253
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 257
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 205
    .local v0, "adapter":Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->-get0(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 203
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 210
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 212
    return v1

    .line 214
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 364
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 306
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 308
    const/4 v3, 0x0

    .line 309
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 310
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 311
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 312
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 313
    const/4 v3, 0x1

    .line 317
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 319
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 320
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 321
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 323
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 310
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 275
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 270
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 112
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 298
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 116
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 120
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    return v6

    .line 150
    :cond_0
    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 151
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 152
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 156
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 157
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 158
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 159
    .local v0, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 160
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 161
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 162
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 163
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 168
    iget-boolean v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v2, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 170
    iput-boolean v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 174
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 175
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    .line 176
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 177
    return v6

    .line 158
    .end local v0    # "addGlobalListener":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "addGlobalListener":Z
    goto :goto_0

    .line 165
    .end local v0    # "addGlobalListener":Z
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 292
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 289
    :cond_0
    return-void
.end method
