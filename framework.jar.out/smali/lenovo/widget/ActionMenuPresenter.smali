.class public Llenovo/widget/ActionMenuPresenter;
.super Lcom/lenovo/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Llenovo/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/ActionMenuPresenter$1;,
        Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Llenovo/widget/ActionMenuPresenter$OverflowPopup;,
        Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;,
        Llenovo/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field isShow:Z

.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mDropDownList:Landroid/widget/ListView;

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

.field final mPopupPresenterCallback:Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 826
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Llenovo/widget/ActionMenuPresenter;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const v0, 0x9040018

    const v1, 0x9040017

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 81
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 90
    new-instance v0, Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$1;)V

    iput-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mPopupPresenterCallback:Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->isShow:Z

    .line 95
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Llenovo/widget/ActionMenuPresenter;->CHECKED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$200(Llenovo/widget/ActionMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 64
    iget v0, p0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    return v0
.end method

.method static synthetic access$300(Llenovo/widget/ActionMenuPresenter;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 64
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 64
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$502(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;)Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;
    .param p1, "x1"    # Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 64
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$600(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 64
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$700(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 64
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$802(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;)Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Llenovo/widget/ActionMenuPresenter;
    .param p1, "x1"    # Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 64
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 312
    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 313
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 323
    :cond_0
    :goto_0
    return-object v0

    .line 315
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 316
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 317
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/lenovo/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 316
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 323
    goto :goto_0
.end method

.method public static getOverlayLayout(Landroid/view/View;)Lcom/lenovo/internal/widget/OverlayLayoutHelp;
    .locals 2
    .param p0, "paramView"    # Landroid/view/View;

    .prologue
    .line 832
    move-object v0, p0

    .line 833
    .local v0, "localView":Landroid/view/View;
    :goto_0
    instance-of v1, v0, Lcom/lenovo/internal/widget/OverlayLayoutHelp;

    if-nez v1, :cond_1

    .line 834
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 835
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "localView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "localView":Landroid/view/View;
    goto :goto_0

    .line 837
    :cond_0
    const/4 v0, 0x0

    .line 841
    :cond_1
    if-eqz v0, :cond_2

    .line 842
    check-cast v0, Lcom/lenovo/internal/widget/OverlayLayoutHelp;

    .line 844
    .end local v0    # "localView":Landroid/view/View;
    :goto_1
    return-object v0

    .restart local v0    # "localView":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bindItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Lcom/lenovo/internal/view/menu/MenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 197
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/lenovo/internal/view/menu/MenuView$ItemView;->initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V

    .line 199
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v1, Llenovo/widget/ActionMenuView;

    .local v1, "menuView":Llenovo/widget/ActionMenuView;
    move-object v0, p2

    .line 200
    check-cast v0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .line 201
    .local v0, "actionItemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 203
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 382
    .local v0, "result":Z
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 383
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 286
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 419
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 420
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 421
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 422
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 423
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 425
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 426
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 427
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 428
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 429
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v15, :cond_3

    .line 430
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 431
    .local v14, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 432
    add-int/lit8 v22, v22, 0x1

    .line 438
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 441
    const/16 v17, 0x0

    .line 429
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 434
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 436
    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    .line 446
    .end local v14    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    if-nez v10, :cond_4

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 448
    :cond_4
    add-int/lit8 v17, v17, -0x1

    .line 450
    :cond_5
    sub-int v17, v17, v22

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 453
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 455
    const/4 v4, 0x0

    .line 456
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 457
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 460
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 464
    .end local v5    # "cellSizeRemaining":I
    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_1b

    .line 465
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 467
    .restart local v14    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Llenovo/widget/ActionMenuPresenter;->getItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 469
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_7

    .line 470
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 472
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 473
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Llenovo/widget/ActionMenuView;->measureChildForCellsSimple(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 478
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 479
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 480
    if-nez v8, :cond_8

    .line 481
    move/from16 v8, v18

    .line 483
    :cond_8
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 484
    .local v9, "groupId":I
    if-eqz v9, :cond_9

    .line 485
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 487
    :cond_9
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 464
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 476
    .restart local v24    # "v":Landroid/view/View;
    :cond_a
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 488
    .end local v24    # "v":Landroid/view/View;
    :cond_b
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 491
    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 492
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 493
    .local v12, "inGroup":Z
    if-gtz v17, :cond_c

    if-eqz v12, :cond_14

    :cond_c
    if-lez v26, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    if-lez v7, :cond_14

    :cond_d
    const/4 v13, 0x1

    .line 496
    .local v13, "isAction":Z
    :goto_5
    if-eqz v13, :cond_11

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Llenovo/widget/ActionMenuPresenter;->getItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 498
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_e

    .line 499
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 501
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 502
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Llenovo/widget/ActionMenuView;->measureChildForCellsSimple(Landroid/view/View;IIII)I

    move-result v6

    .line 504
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 505
    if-nez v6, :cond_f

    .line 506
    const/4 v13, 0x0

    .line 524
    .end local v6    # "cells":I
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-nez v27, :cond_11

    .line 525
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 526
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 527
    if-nez v8, :cond_10

    .line 528
    move/from16 v8, v18

    .line 531
    :cond_10
    add-int v27, v26, v8

    if-lez v27, :cond_16

    const/16 v27, 0x1

    :goto_7
    and-int v13, v13, v27

    .line 535
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_11
    if-eqz v13, :cond_17

    if-eqz v9, :cond_17

    .line 536
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 550
    :cond_12
    if-eqz v13, :cond_13

    add-int/lit8 v17, v17, -0x1

    .line 552
    :cond_13
    invoke-virtual {v14, v13}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 493
    .end local v13    # "isAction":Z
    :cond_14
    const/4 v13, 0x0

    goto :goto_5

    .line 509
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_15
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 531
    .restart local v18    # "measuredWidth":I
    :cond_16
    const/16 v27, 0x0

    goto :goto_7

    .line 537
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_17
    if-eqz v12, :cond_12

    .line 539
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 540
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_8
    move/from16 v0, v16

    if-ge v0, v11, :cond_12

    .line 541
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 542
    .local v3, "areYouMyGroupie":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_19

    .line 544
    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_18

    add-int/lit8 v17, v17, 0x1

    .line 545
    :cond_18
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 540
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 555
    .end local v3    # "areYouMyGroupie":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1a
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 558
    .end local v14    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_1b
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/lenovo/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 187
    check-cast v2, Llenovo/widget/ActionMenuView;

    .line 188
    .local v2, "menuParent":Llenovo/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 189
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Llenovo/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    invoke-virtual {v2, v1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_2
    return-object v0

    .line 185
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Llenovo/widget/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, "result":Lcom/lenovo/internal/view/menu/MenuView;
    move-object v1, v0

    .line 175
    check-cast v1, Llenovo/widget/ActionMenuView;

    invoke-virtual {v1, p0}, Llenovo/widget/ActionMenuView;->setPresenter(Llenovo/widget/ActionMenuPresenter;)V

    .line 176
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 361
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v3}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setChecked(Z)V

    .line 362
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 373
    :goto_0
    return v1

    .line 368
    :cond_0
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    .line 369
    .local v0, "popup":Lcom/lenovo/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 371
    goto :goto_0

    :cond_1
    move v1, v3

    .line 373
    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 394
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 99
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 104
    .local v0, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 108
    :cond_0
    iget-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 113
    :cond_1
    iget-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItems:I

    .line 117
    :cond_2
    iget v3, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 118
    .local v3, "width":I
    iget-boolean v4, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_4

    .line 119
    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_3

    .line 120
    new-instance v4, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Llenovo/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 121
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 122
    .local v2, "spec":I
    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 124
    .end local v2    # "spec":I
    :cond_3
    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 129
    :goto_0
    iput v3, p0, Llenovo/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 130
    const v4, 0x908004a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 135
    iput-object v7, p0, Llenovo/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 136
    return-void

    .line 126
    :cond_4
    iput-object v7, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method initOverFlowPopup()V
    .locals 7

    .prologue
    .line 345
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    if-nez v0, :cond_1

    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    iget-object v5, p0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;-><init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/widget/ListView;Z)V

    iput-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->setMenuInit(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 563
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 564
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 565
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 140
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x90b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItems:I

    .line 144
    const v1, 0x908004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 146
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 149
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/widget/ActionMenuPresenter;->isShow:Z

    .line 150
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 576
    move-object v1, p1

    check-cast v1, Llenovo/widget/ActionMenuPresenter$SavedState;

    .line 577
    .local v1, "saved":Llenovo/widget/ActionMenuPresenter$SavedState;
    iget v3, v1, Llenovo/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 578
    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget v4, v1, Llenovo/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 579
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .line 581
    .local v2, "subMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Llenovo/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z

    .line 584
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 569
    new-instance v0, Llenovo/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Llenovo/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 570
    .local v0, "state":Llenovo/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Llenovo/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Llenovo/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 571
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 291
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v2

    .line 293
    :cond_1
    move-object v1, p1

    .line 294
    .local v1, "topSubMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 295
    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Llenovo/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 299
    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 300
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 303
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Llenovo/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 304
    new-instance v2, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Llenovo/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/lenovo/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 306
    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->show(Landroid/os/IBinder;)V

    .line 307
    invoke-super {p0, p1}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z

    .line 308
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 588
    if-eqz p1, :cond_0

    .line 590
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Llenovo/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 170
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 164
    iput p1, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItems:I

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 166
    return-void
.end method

.method public setMenuView(Llenovo/widget/ActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Llenovo/widget/ActionMenuView;

    .prologue
    .line 597
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    .line 598
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Llenovo/widget/ActionMenuView;->initialize(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 599
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 161
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 153
    iput p1, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 154
    iput-boolean p2, p0, Llenovo/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 156
    return-void
.end method

.method public shouldIncludeItem(ILcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 207
    invoke-virtual {p2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 333
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setChecked(Z)V

    .line 334
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter;->initOverFlowPopup()V

    .line 335
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mOverflowPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    invoke-direct {v0, p0, v2}, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 338
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter;->mPostedOpenRunnable:Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 339
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z

    move v0, v1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 23
    .param p1, "cleared"    # Z

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 213
    .local v11, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v11, :cond_0

    .line 214
    invoke-static {v11}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 216
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/lenovo/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestLayout()V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 222
    .local v5, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 223
    .local v7, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 224
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Llenovo/view/ActionProvider;

    move-result-object v15

    .line 225
    .local v15, "provider":Llenovo/view/ActionProvider;
    if-eqz v15, :cond_1

    .line 226
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Llenovo/view/ActionProvider;->setSubUiVisibilityListener(Llenovo/view/ActionProvider$SubUiVisibilityListener;)V

    .line 223
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 231
    .end local v5    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    .end local v7    # "count":I
    .end local v9    # "i":I
    .end local v15    # "provider":Llenovo/view/ActionProvider;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v12

    .line 234
    .local v12, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v8, 0x0

    .line 235
    .local v8, "hasOverflow":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    if-eqz v12, :cond_3

    .line 236
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 237
    .restart local v7    # "count":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_d

    .line 238
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v18

    if-nez v18, :cond_c

    const/4 v8, 0x1

    .line 244
    .end local v7    # "count":I
    :cond_3
    :goto_2
    if-eqz v8, :cond_f

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 246
    new-instance v18, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 248
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isClickable()Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setClickable(Z)V

    .line 249
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 250
    .local v14, "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_7

    .line 251
    if-eqz v14, :cond_6

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    check-cast v10, Llenovo/widget/ActionMenuView;

    .line 255
    .local v10, "menuView":Llenovo/widget/ActionMenuView;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Llenovo/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Llenovo/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .end local v10    # "menuView":Llenovo/widget/ActionMenuView;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 258
    .local v16, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 259
    new-instance v18, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x101006d

    invoke-direct/range {v18 .. v21}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/lenovo/internal/R$styleable;->Theme:[I

    const/high16 v21, 0x1010000

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 262
    .local v4, "ac":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    const v19, -0x50506

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 263
    .local v6, "color":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 267
    .end local v4    # "ac":Landroid/content/res/TypedArray;
    .end local v6    # "color":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/ViewGroup;

    invoke-static/range {v18 .. v18}, Llenovo/widget/ActionMenuPresenter;->getOverlayLayout(Landroid/view/View;)Lcom/lenovo/internal/widget/OverlayLayoutHelp;

    move-result-object v13

    .line 268
    .local v13, "overlayLayout":Lcom/lenovo/internal/widget/OverlayLayoutHelp;
    if-eqz v13, :cond_a

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lcom/lenovo/internal/widget/OverlayLayoutHelp;->setOptionMenuList(Landroid/widget/ListView;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setVisibility(I)V

    .line 271
    :cond_9
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuPresenter;->initOverFlowPopup()V

    .line 281
    .end local v13    # "overlayLayout":Lcom/lenovo/internal/widget/OverlayLayoutHelp;
    .end local v14    # "parent":Landroid/view/ViewGroup;
    .end local v16    # "time":J
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v18, v0

    check-cast v18, Llenovo/widget/ActionMenuView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Llenovo/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 282
    return-void

    .line 231
    .end local v8    # "hasOverflow":Z
    .end local v12    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 238
    .restart local v7    # "count":I
    .restart local v8    # "hasOverflow":Z
    .restart local v12    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 240
    :cond_d
    if-lez v7, :cond_e

    const/4 v8, 0x1

    :goto_4
    goto/16 :goto_2

    :cond_e
    const/4 v8, 0x0

    goto :goto_4

    .line 273
    .end local v7    # "count":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/ViewGroup;

    invoke-static/range {v18 .. v18}, Llenovo/widget/ActionMenuPresenter;->getOverlayLayout(Landroid/view/View;)Lcom/lenovo/internal/widget/OverlayLayoutHelp;

    move-result-object v13

    .line 276
    .restart local v13    # "overlayLayout":Lcom/lenovo/internal/widget/OverlayLayoutHelp;
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v0, v13, :cond_a

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lcom/lenovo/internal/widget/OverlayLayoutHelp;->removeOptionMenuList(Landroid/widget/ListView;)V

    goto :goto_3
.end method
