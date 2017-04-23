.class Llenovo/app/ActionBarActivityDelegateBase;
.super Llenovo/app/ActionBarActivityDelegate;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;,
        Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;,
        Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;,
        Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;,
        Llenovo/app/ActionBarActivityDelegateBase$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegateBase"


# instance fields
.field private mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

.field mActionMode:Llenovo/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

.field private mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field private mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleToSet:Ljava/lang/CharSequence;

.field private mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

.field private mWindowDecor:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0(Llenovo/app/ActionBarActivityDelegateBase;)Lcom/lenovo/internal/widget/DecorContentParent;
    .locals 1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    return-object v0
.end method

.method static synthetic -get1(Llenovo/app/ActionBarActivityDelegateBase;)I
    .locals 1

    iget v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic -set0(Llenovo/app/ActionBarActivityDelegateBase;I)I
    .locals 0

    iput p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic -set1(Llenovo/app/ActionBarActivityDelegateBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic -wrap0(Llenovo/app/ActionBarActivityDelegateBase;I)I
    .locals 1
    .param p1, "insetTop"    # I

    .prologue
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->updateStatusGuard(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Llenovo/app/ActionBarActivityDelegateBase;Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Llenovo/app/ActionBarActivityDelegateBase;ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "panel"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Llenovo/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic -wrap3(Llenovo/app/ActionBarActivityDelegateBase;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic -wrap4(Llenovo/app/ActionBarActivityDelegateBase;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic -wrap5(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 0
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic -wrap6(Llenovo/app/ActionBarActivityDelegateBase;I)V
    .locals 0
    .param p1, "featureId"    # I

    .prologue
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->doInvalidatePanelMenu(I)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 114
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$1;

    invoke-direct {v0, p0}, Llenovo/app/ActionBarActivityDelegateBase$1;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 135
    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, -0x1

    .line 391
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/lenovo/internal/R$styleable;->Theme:[I

    invoke-virtual {v7, v8}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 415
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 416
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_4

    const/4 v2, 0x1

    .line 417
    .local v2, "isPortrait":Z
    :goto_0
    const/4 v6, -0x1

    .line 418
    .local v6, "w":I
    const/4 v1, -0x1

    .line 420
    .local v1, "h":I
    if-eqz v2, :cond_5

    .line 394
    const/4 v5, 0x0

    .line 421
    .local v5, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v12, :cond_0

    iget v7, v5, Landroid/util/TypedValue;->type:I

    if-eqz v7, :cond_0

    .line 422
    iget v7, v5, Landroid/util/TypedValue;->type:I

    if-ne v7, v10, :cond_6

    .line 423
    invoke-virtual {v5, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v6, v7

    .line 429
    :cond_0
    :goto_2
    if-eqz v2, :cond_7

    .line 395
    const/4 v4, 0x0

    .line 430
    .local v4, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v12, :cond_1

    iget v7, v4, Landroid/util/TypedValue;->type:I

    if-eqz v7, :cond_1

    .line 431
    iget v7, v4, Landroid/util/TypedValue;->type:I

    if-ne v7, v10, :cond_8

    .line 432
    invoke-virtual {v4, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v1, v7

    .line 438
    :cond_1
    :goto_4
    if-ne v6, v9, :cond_2

    if-eq v1, v9, :cond_3

    .line 439
    :cond_2
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Landroid/view/Window;->setLayout(II)V

    .line 442
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 390
    return-void

    .line 416
    .end local v1    # "h":I
    .end local v2    # "isPortrait":Z
    .end local v4    # "tvh":Landroid/util/TypedValue;
    .end local v5    # "tvw":Landroid/util/TypedValue;
    .end local v6    # "w":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isPortrait":Z
    goto :goto_0

    .line 393
    .restart local v1    # "h":I
    .restart local v6    # "w":I
    :cond_5
    const/4 v5, 0x0

    .line 420
    .restart local v5    # "tvw":Landroid/util/TypedValue;
    goto :goto_1

    .line 424
    :cond_6
    iget v7, v5, Landroid/util/TypedValue;->type:I

    if-ne v7, v11, :cond_0

    .line 425
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    float-to-int v6, v7

    goto :goto_2

    .line 396
    :cond_7
    const/4 v4, 0x0

    .line 429
    .restart local v4    # "tvh":Landroid/util/TypedValue;
    goto :goto_3

    .line 433
    :cond_8
    iget v7, v4, Landroid/util/TypedValue;->type:I

    if-ne v7, v11, :cond_1

    .line 434
    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    float-to-int v1, v7

    goto :goto_4
.end method

.method private callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "panel"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1251
    if-nez p3, :cond_1

    .line 1253
    if-nez p2, :cond_0

    .line 1254
    if-ltz p1, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1255
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1259
    :cond_0
    if-eqz p2, :cond_1

    .line 1261
    iget-object p3, p2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 1266
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v0, :cond_3

    .line 1269
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1249
    return-void

    .line 1267
    :cond_3
    return-void
.end method

.method private checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1196
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1197
    return-void

    .line 1200
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1201
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1202
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1203
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1206
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1195
    return-void

    .line 1204
    :cond_2
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1754
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1755
    return-void

    .line 1758
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1759
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/SplitActionBarView;->dismissPopups()V

    .line 1760
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1761
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1764
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1753
    return-void

    .line 1762
    :cond_2
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 3
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1216
    if-eqz p2, :cond_1

    iget v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-nez v0, :cond_1

    .line 1217
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1219
    return-void

    .line 1220
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    iget-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1222
    return-void

    .line 1227
    :cond_1
    iget-boolean v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v0, :cond_2

    .line 1228
    if-eqz p2, :cond_2

    .line 1229
    iget v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-direct {p0, v0, p1, v1}, Llenovo/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 1233
    :cond_2
    iput-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1234
    iput-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1235
    iput-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    .line 1238
    iput-object v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1242
    const/4 v0, 0x1

    iput-boolean v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1244
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-ne v0, p1, :cond_3

    .line 1245
    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1209
    :cond_3
    return-void
.end method

.method private doInvalidatePanelMenu(I)V
    .locals 6
    .param p1, "featureId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1342
    invoke-direct {p0, p1, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1343
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    const/4 v0, 0x0

    .line 1344
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 1345
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1346
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1348
    iput-object v0, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1351
    :cond_0
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1352
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->clear()V

    .line 1354
    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    :cond_1
    iput-boolean v5, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1355
    iput-boolean v5, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1361
    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_4

    .line 1362
    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_4

    .line 1364
    :cond_3
    invoke-direct {p0, v3, v3}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1365
    if-eqz v1, :cond_4

    .line 1366
    iput-boolean v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1367
    invoke-direct {p0, v1, v4}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1341
    :cond_4
    return-void
.end method

.method private ensureToolbarListMenuPresenter()V
    .locals 3

    .prologue
    .line 1449
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_0

    .line 1450
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x90302e8

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1452
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .line 1453
    const v2, 0x9040022

    .line 1452
    invoke-direct {v1, v0, v2}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .line 1448
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    .line 1273
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1274
    .local v3, "panels":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1275
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1276
    aget-object v2, v3, v1

    .line 1277
    .local v2, "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1278
    return-object v2

    .line 1274
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1275
    .restart local v1    # "i":I
    .restart local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1281
    .end local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    return-object v5
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    .line 994
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x90c0006

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 995
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 996
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 998
    :cond_0
    return-object v0
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    .line 1002
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x90c0007

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1003
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 1004
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1006
    :cond_0
    return-object v0
.end method

.method private getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1286
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .local v0, "ar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gt v3, p1, :cond_2

    .line 1287
    :cond_0
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1288
    .local v1, "nar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_1

    .line 1289
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1291
    :cond_1
    move-object v0, v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1294
    .end local v1    # "nar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    aget-object v2, v0, p1

    .line 1295
    .local v2, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-nez v2, :cond_3

    .line 1296
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .end local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-direct {v2, p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;-><init>(I)V

    .restart local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    aput-object v2, v0, p1

    .line 1298
    :cond_3
    return-object v2
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v1, 0x4

    .line 985
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 986
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 988
    :cond_0
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 989
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 984
    :cond_1
    return-void
.end method

.method private initializePanelContent(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 4
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1055
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_0

    .line 1056
    return v1

    .line 1059
    :cond_0
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    if-nez v2, :cond_1

    .line 1060
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    invoke-direct {v2, p0, v3}, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;)V

    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    .line 1063
    :cond_1
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->getListMenuView(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    .line 1065
    .local v0, "menuView":Lcom/lenovo/internal/view/menu/MenuView;
    check-cast v0, Landroid/view/View;

    .end local v0    # "menuView":Lcom/lenovo/internal/view/menu/MenuView;
    iput-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1067
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private initializePanelDecor(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)V
    .locals 1
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    .line 889
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iput-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 890
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 888
    return-void
.end method

.method private initializePanelMenu(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 11
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    const v10, 0x1010397

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1010
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 1013
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    .line 1014
    :cond_0
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v6, :cond_1

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v6, :cond_5

    .line 1015
    :cond_1
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1016
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1017
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 1018
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1021
    :cond_2
    const/4 v5, 0x0

    .line 1022
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_6

    .line 1023
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1024
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1025
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1026
    invoke-virtual {v5, v10, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1033
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1034
    if-nez v5, :cond_3

    .line 1035
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1036
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1038
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_3
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1041
    :cond_4
    if-eqz v5, :cond_5

    .line 1042
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v1, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1043
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1047
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_5
    new-instance v3, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1048
    .local v3, "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 1049
    invoke-virtual {p1, v3}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1051
    return v8

    .line 1029
    .end local v3    # "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_6
    invoke-virtual {v0, v10, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1332
    iget v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    .line 1334
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1337
    iput-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    .line 1331
    :cond_0
    return-void
.end method

.method private openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 828
    if-nez p1, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    .line 828
    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 832
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->canShowOverflowMenu()Z

    move-result v0

    .line 832
    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 837
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 827
    :goto_0
    return-void

    .line 831
    :cond_2
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    .line 835
    :cond_3
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method private openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 9
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 843
    iget-boolean v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 844
    :cond_0
    return-void

    .line 849
    :cond_1
    iget v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-nez v5, :cond_4

    .line 850
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 851
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 852
    .local v1, "config":Landroid/content/res/Configuration;
    iget v5, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    .line 853
    const/4 v6, 0x4

    .line 852
    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    .line 854
    .local v4, "isXLarge":Z
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 855
    const/16 v6, 0xb

    .line 854
    if-lt v5, v6, :cond_3

    const/4 v3, 0x1

    .line 857
    .local v3, "isHoneycombApp":Z
    :goto_1
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 858
    return-void

    .line 852
    .end local v3    # "isHoneycombApp":Z
    .end local v4    # "isXLarge":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "isXLarge":Z
    goto :goto_0

    .line 854
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "isHoneycombApp":Z
    goto :goto_1

    .line 862
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "isHoneycombApp":Z
    .end local v4    # "isXLarge":Z
    :cond_4
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 863
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_5

    iget v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v6}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 870
    :cond_5
    invoke-direct {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 871
    return-void

    .line 865
    :cond_6
    invoke-direct {p0, p1, v8}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 866
    return-void

    .line 874
    :cond_7
    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    iget-boolean v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    if-eqz v5, :cond_9

    .line 875
    :cond_8
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelDecor(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)V

    .line 879
    :cond_9
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelContent(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->hasPanelItems()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 883
    iput-boolean v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 885
    iput-boolean v8, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    .line 841
    return-void

    .line 880
    :cond_a
    return-void
.end method

.method private preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1071
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    return v4

    .line 1076
    :cond_0
    iget-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_1

    .line 1077
    return v3

    .line 1080
    :cond_1
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eq v2, p1, :cond_2

    .line 1082
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-direct {p0, v2, v4}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1086
    :cond_2
    iget v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-eqz v2, :cond_3

    iget v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_7

    :cond_3
    const/4 v0, 0x1

    .line 1088
    .local v0, "isActionBarMenu":Z
    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_4

    .line 1091
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 1095
    :cond_4
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v2, :cond_f

    .line 1096
    :cond_5
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_8

    .line 1097
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelMenu(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_8

    .line 1098
    :cond_6
    return v4

    .line 1086
    .end local v0    # "isActionBarMenu":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "isActionBarMenu":Z
    goto :goto_0

    .line 1110
    :cond_8
    if-eqz v0, :cond_a

    .line 1111
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    if-nez v2, :cond_9

    .line 1112
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v7}, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;)V

    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    .line 1114
    :cond_9
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_c

    .line 1115
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1124
    :cond_a
    :goto_1
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1125
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    iget v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1127
    invoke-virtual {p1, v7}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1134
    if-eqz v0, :cond_b

    .line 1135
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_d

    .line 1136
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v7, v3}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1143
    :cond_b
    :goto_2
    return v4

    .line 1116
    :cond_c
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_a

    .line 1117
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_1

    .line 1137
    :cond_d
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_b

    .line 1138
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_2

    .line 1146
    :cond_e
    iput-boolean v4, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1151
    :cond_f
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1155
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v2, :cond_10

    .line 1156
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1157
    iput-object v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1161
    :cond_10
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v4, v7, v5}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1168
    if-eqz v0, :cond_11

    .line 1169
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_12

    .line 1170
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v7, v3}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1176
    :cond_11
    :goto_3
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1177
    return v4

    .line 1171
    :cond_12
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_11

    .line 1172
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_3

    .line 1182
    :cond_13
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 1181
    :goto_4
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 1183
    .local v1, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_15

    move v2, v3

    :goto_5
    iput-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    .line 1184
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-boolean v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v2, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1185
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1188
    iput-boolean v3, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1189
    iput-boolean v4, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1190
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1192
    return v3

    .line 1182
    .end local v1    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    const/4 v2, -0x1

    goto :goto_4

    .restart local v1    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_15
    move v2, v4

    .line 1183
    goto :goto_5
.end method

.method private reopenMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 8
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 894
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_4

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 895
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 896
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v2

    .line 894
    if-eqz v2, :cond_4

    .line 898
    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 900
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 920
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 921
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 922
    invoke-direct {p0, v4, v6}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 923
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v7, v3}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 926
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 901
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 903
    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_3

    .line 904
    iget v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 905
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 906
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 909
    :cond_3
    invoke-direct {p0, v4, v6}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 913
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_1

    .line 914
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v5, v2}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    .line 913
    if-eqz v2, :cond_1

    .line 915
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v7, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 916
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    .line 929
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_4
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 930
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 931
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowPending()Z

    move-result v2

    .line 929
    if-eqz v2, :cond_9

    .line 933
    :cond_5
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 935
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 955
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->hideOverflowMenu()Z

    .line 956
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 957
    invoke-direct {p0, v4, v6}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 958
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v7, v3}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 961
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_6
    :goto_1
    return-void

    .line 936
    :cond_7
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 938
    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_8

    .line 939
    iget v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 940
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 941
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 944
    :cond_8
    invoke-direct {p0, v4, v6}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 948
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_6

    .line 949
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v5, v2}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    .line 948
    if-eqz v2, :cond_6

    .line 950
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v7, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 951
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    goto :goto_1

    .line 964
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_9
    invoke-direct {p0, v4, v6}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 966
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iput-boolean v6, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 967
    invoke-direct {p0, v1, v4}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 969
    invoke-direct {p0, v1, v5}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 893
    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v2, 0x0

    .line 974
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 975
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 978
    :cond_0
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 979
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 973
    :cond_1
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0x2710

    const/4 v5, 0x0

    .line 789
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 790
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 792
    .local v1, "horizontalProgressBar":Landroid/widget/ProgressBar;
    const/4 v4, -0x1

    if-ne p1, v4, :cond_4

    .line 793
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v4, :cond_1

    .line 794
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    .line 795
    .local v2, "level":I
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_0

    if-ge v2, v6, :cond_3

    .line 796
    :cond_0
    const/4 v3, 0x0

    .line 797
    .local v3, "visibility":I
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 799
    .end local v2    # "level":I
    .end local v3    # "visibility":I
    :cond_1
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v4, :cond_2

    .line 800
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 788
    :cond_2
    :goto_1
    return-void

    .line 796
    .restart local v2    # "level":I
    :cond_3
    const/4 v3, 0x4

    .restart local v3    # "visibility":I
    goto :goto_0

    .line 802
    .end local v2    # "level":I
    .end local v3    # "visibility":I
    :cond_4
    const/4 v4, -0x2

    if-ne p1, v4, :cond_6

    .line 803
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v4, :cond_5

    .line 804
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 806
    :cond_5
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v4, :cond_2

    .line 807
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 809
    :cond_6
    const/4 v4, -0x3

    if-ne p1, v4, :cond_7

    .line 810
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 811
    :cond_7
    const/4 v4, -0x4

    if-ne p1, v4, :cond_8

    .line 812
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 813
    :cond_8
    if-ltz p1, :cond_2

    if-gt p1, v6, :cond_2

    .line 817
    add-int/lit8 v4, p1, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 819
    if-ge p1, v6, :cond_9

    .line 820
    invoke-direct {p0, v1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 822
    :cond_9
    invoke-direct {p0, v1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1
.end method

.method private updateStatusGuard(I)I
    .locals 12
    .param p1, "insetTop"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 1379
    const/4 v6, 0x0

    .line 1381
    .local v6, "showStatusGuard":Z
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_3

    .line 1382
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 1384
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1383
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1385
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    .line 1387
    .local v4, "mlpChanged":Z
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1388
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 1389
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1390
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1392
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1393
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1394
    .local v1, "localInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, p1, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1396
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v8, v0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1397
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_5

    move v5, p1

    .line 1398
    .local v5, "newMargin":I
    :goto_0
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v5, :cond_1

    .line 1399
    const/4 v4, 0x1

    .line 1400
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1402
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_6

    .line 1403
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    .line 1404
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1405
    const v10, 0x907005d

    .line 1404
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1406
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    .line 1407
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1406
    invoke-virtual {v8, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    :cond_1
    :goto_1
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    .line 1426
    :goto_2
    iget-boolean v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    .line 1427
    const/4 p1, 0x0

    .line 1436
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1437
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v3}, Lcom/lenovo/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1441
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_3
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 1442
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_9

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    :cond_4
    return p1

    .line 1397
    .restart local v0    # "insets":Landroid/graphics/Rect;
    .restart local v1    # "localInsets":Landroid/graphics/Rect;
    .restart local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "mlpChanged":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "newMargin":I
    goto :goto_0

    .line 1410
    :cond_6
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1411
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_1

    .line 1412
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1413
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1420
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1431
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_8
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v8, :cond_2

    .line 1432
    const/4 v4, 0x1

    .line 1433
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1442
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_9
    const/16 v7, 0x8

    goto :goto_4
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 244
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 245
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 246
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 243
    return-void
.end method

.method public createSupportActionBar()Llenovo/app/ActionBar;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 158
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getUiOptions()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v2, v1}, Lcom/lenovo/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 160
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    iget-boolean v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasEmbeddedTabsSup:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;ZZ)V

    .line 161
    .local v0, "ab":Llenovo/app/ActionBar;
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 162
    return-object v0
.end method

.method createView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    .line 769
    const-string/jumbo v0, "EditText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 769
    :cond_0
    const-string/jumbo v0, "Spinner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 769
    :cond_1
    const-string/jumbo v0, "CheckBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 769
    :cond_2
    const-string/jumbo v0, "RadioButton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 769
    :cond_3
    const-string/jumbo v0, "CheckedTextView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 779
    new-instance v0, Landroid/widget/CheckedTextView;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 782
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method final ensureSubDecor()V
    .locals 12

    .prologue
    const v11, 0x1020002

    const/16 v10, 0x15

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 256
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-nez v5, :cond_7

    .line 257
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v5, :cond_9

    .line 263
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 264
    .local v2, "outValue":Landroid/util/TypedValue;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v10, :cond_0

    .line 265
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010431

    invoke-virtual {v5, v6, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 269
    :cond_0
    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_8

    .line 270
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 276
    .local v4, "themedContext":Landroid/content/Context;
    :goto_0
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 277
    const v6, 0x9040025

    .line 276
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 279
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 280
    const v6, 0x90c0008

    .line 279
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/internal/widget/DecorContentParent;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    .line 281
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 286
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    if-eqz v5, :cond_1

    .line 287
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/16 v6, 0x9

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 289
    :cond_1
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v5, :cond_2

    .line 290
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 292
    :cond_2
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v5, :cond_3

    .line 293
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 346
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "themedContext":Landroid/content/Context;
    :cond_3
    :goto_1
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->makeOptionalFitsSystemWindows()V

    .line 349
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-interface {v5, v6}, Llenovo/app/ActivityBarActivityImpl;->superSetContentView(Landroid/view/View;)V

    .line 353
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 354
    .local v1, "decorContent":Landroid/view/View;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 355
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v6, 0x90c0002

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, "abcContent":Landroid/view/View;
    invoke-virtual {v0, v11}, Landroid/view/View;->setId(I)V

    .line 360
    instance-of v5, v1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_4

    .line 361
    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "decorContent":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_4
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v5, :cond_5

    .line 366
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 367
    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    .line 370
    :cond_5
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->applyFixedSizeWindow()V

    .line 372
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->onSubDecorInstalled()V

    .line 374
    iput-boolean v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    .line 381
    invoke-direct {p0, v8, v8}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v3

    .line 382
    .local v3, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v3, :cond_6

    iget-object v5, v3, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v5, :cond_7

    .line 383
    :cond_6
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Llenovo/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    .line 255
    .end local v0    # "abcContent":Landroid/view/View;
    .end local v3    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_7
    return-void

    .line 272
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    :cond_8
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .restart local v4    # "themedContext":Landroid/content/Context;
    goto/16 :goto_0

    .line 296
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "themedContext":Landroid/content/Context;
    :cond_9
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSplitNoAcionBar:Z

    if-nez v5, :cond_b

    .line 297
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-eqz v5, :cond_a

    .line 298
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 299
    const v6, 0x9040028

    .line 298
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 311
    :goto_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v10, :cond_c

    .line 314
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 315
    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$2;

    invoke-direct {v6, p0}, Llenovo/app/ActionBarActivityDelegateBase$2;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    .line 314
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto/16 :goto_1

    .line 301
    :cond_a
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 302
    const v6, 0x9040027

    .line 301
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    goto :goto_2

    .line 305
    :cond_b
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 306
    const v6, 0x9040029

    .line 305
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 307
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v6, 0x90c0003

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/internal/widget/SplitActionBarView;

    iput-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    .line 308
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/SplitActionBarView;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    goto :goto_2

    .line 335
    :cond_c
    iget-object v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    check-cast v5, Lcom/lenovo/internal/widget/FitWindowsViewGroup;

    .line 336
    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$3;

    invoke-direct {v6, p0}, Llenovo/app/ActionBarActivityDelegateBase$3;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    .line 335
    invoke-interface {v5, v6}, Lcom/lenovo/internal/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_1
.end method

.method getHomeAsUpIndicatorAttrId()I
    .locals 1

    .prologue
    .line 723
    const v0, 0x101030b

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 685
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v0}, Llenovo/view/ActionMode;->finish()V

    .line 687
    return v1

    .line 691
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0}, Llenovo/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    return v1

    .line 695
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 192
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    .line 145
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Llenovo/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-nez v0, :cond_1

    .line 147
    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mEnableDefaultActionBarUp:Z

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 511
    if-eqz p1, :cond_0

    .line 512
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0

    .line 514
    :cond_0
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x0

    .line 484
    const/4 v1, 0x0

    .line 487
    .local v1, "panelView":Landroid/view/View;
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-nez v3, :cond_1

    .line 489
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 490
    .local v0, "callback":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0, p1}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    .line 494
    .end local v1    # "panelView":Landroid/view/View;
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v3, :cond_1

    .line 499
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v2

    .line 500
    .local v2, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-direct {p0, v2, v4}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 501
    iget-boolean v3, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v3, :cond_1

    .line 502
    iget-object v1, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 506
    .end local v0    # "callback":Lcom/lenovo/internal/app/WindowCallback;
    .end local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_1
    return-object v1
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 761
    invoke-virtual {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 730
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v2, :cond_1

    .line 731
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v2, v3, p2, v4}, Llenovo/app/ActionBarActivityDelegateBase;->performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 733
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 734
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v2, :cond_0

    .line 735
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    iput-boolean v4, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 737
    :cond_0
    return v4

    .line 745
    .end local v0    # "handled":Z
    :cond_1
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-nez v2, :cond_2

    .line 746
    invoke-direct {p0, v5, v4}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 747
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-direct {p0, v1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 748
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2, v4}, Llenovo/app/ActionBarActivityDelegateBase;->performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 749
    .restart local v0    # "handled":Z
    iput-boolean v5, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 750
    if-eqz v0, :cond_2

    .line 751
    return v4

    .line 754
    .end local v0    # "handled":Z
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    return v5
.end method

.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 558
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 559
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 560
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-direct {p0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 561
    .local v1, "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 562
    iget v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->reopenMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 569
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 546
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 547
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 550
    :cond_0
    return v1

    .line 552
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v0, p1, p2}, Llenovo/app/ActivityBarActivityImpl;->superOnMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 527
    invoke-direct {p0, p1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 528
    .local v0, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0, v0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 533
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 534
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v2}, Llenovo/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 537
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 540
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1, p1, p2}, Llenovo/app/ActivityBarActivityImpl;->superOnPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 519
    if-eqz p1, :cond_0

    .line 520
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 522
    :cond_0
    return v0
.end method

.method public onSplitMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1768
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/SplitActionBarView;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method onSubDecorInstalled()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 473
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 472
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 478
    :cond_1
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method final performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 1303
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    return v2

    .line 1307
    :cond_0
    const/4 v0, 0x0

    .line 1311
    .local v0, "handled":Z
    iget-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p3}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_2

    .line 1313
    iget-object v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1316
    .end local v0    # "handled":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 1322
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-nez v1, :cond_3

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v1, :cond_3

    .line 1323
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1328
    :cond_3
    return v0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 227
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 228
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 229
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 230
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 225
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 218
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 219
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 220
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 216
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 235
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 236
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 237
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 238
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 234
    return-void
.end method

.method setSupportActionBar(Llenovo/widget/Toolbar;)V
    .locals 5
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;

    .prologue
    .line 167
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getSupportActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    .line 168
    .local v0, "ab":Llenovo/app/ActionBar;
    instance-of v2, v0, Lcom/lenovo/internal/app/WindowDecorActionBar;

    if-eqz v2, :cond_0

    .line 169
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_0
    instance-of v2, v0, Lcom/lenovo/internal/app/ToolbarActionBar;

    if-eqz v2, :cond_1

    .line 174
    check-cast v0, Lcom/lenovo/internal/app/ToolbarActionBar;

    .end local v0    # "ab":Llenovo/app/ActionBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/app/ToolbarActionBar;->setListMenuPresenter(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)V

    .line 179
    :cond_1
    new-instance v1, Lcom/lenovo/internal/app/ToolbarActionBar;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 180
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDefaultWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 179
    invoke-direct {v1, p1, v2, v3, v4}, Lcom/lenovo/internal/app/ToolbarActionBar;-><init>(Llenovo/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;Lcom/lenovo/internal/app/WindowCallback;)V

    .line 181
    .local v1, "tbab":Lcom/lenovo/internal/app/ToolbarActionBar;
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureToolbarListMenuPresenter()V

    .line 182
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/app/ToolbarActionBar;->setListMenuPresenter(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)V

    .line 183
    invoke-virtual {p0, v1}, Llenovo/app/ActionBarActivityDelegateBase;->setSupportActionBar(Llenovo/app/ActionBar;)V

    .line 184
    invoke-virtual {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 185
    invoke-virtual {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->invalidateOptionsMenu()Z

    .line 166
    return-void
.end method

.method setSupportProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 718
    add-int/lit8 v0, p1, 0x0

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 717
    return-void
.end method

.method setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 712
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 711
    return-void

    .line 713
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 706
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 705
    return-void

    .line 707
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method setSupportProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 700
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 699
    return-void

    .line 701
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public startSupportActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "ActionMode callback can not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_0
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v1}, Llenovo/view/ActionMode;->finish()V

    .line 583
    :cond_1
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/view/ActionMode$Callback;)V

    .line 585
    .local v0, "wrappedCallback":Llenovo/view/ActionMode$Callback;
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_2

    .line 586
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v0}, Llenovo/app/ActionBar;->startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 587
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_2

    .line 588
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-interface {v1, v2}, Llenovo/app/ActivityBarActivityImpl;->onSupportActionModeStarted(Llenovo/view/ActionMode;)V

    .line 592
    :cond_2
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-nez v1, :cond_3

    .line 594
    invoke-virtual {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 597
    :cond_3
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    return-object v1
.end method

.method startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 12
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 609
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v7, :cond_0

    .line 610
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v7}, Llenovo/view/ActionMode;->finish()V

    .line 612
    :cond_0
    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v6, p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/view/ActionMode$Callback;)V

    .line 613
    .local v6, "wrappedCallback":Llenovo/view/ActionMode$Callback;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 615
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-nez v7, :cond_1

    .line 616
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mIsFloating:Z

    if-eqz v7, :cond_5

    .line 617
    new-instance v7, Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-direct {v7, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 620
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 621
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 622
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 624
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 625
    .local v2, "heightValue":Landroid/util/TypedValue;
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v10, 0x10102eb

    invoke-virtual {v7, v10, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 626
    iget v7, v2, Landroid/util/TypedValue;->data:I

    .line 627
    iget-object v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 626
    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 628
    .local v1, "height":I
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 629
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 630
    new-instance v7, Llenovo/app/ActionBarActivityDelegateBase$4;

    invoke-direct {v7, p0}, Llenovo/app/ActionBarActivityDelegateBase$4;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 654
    .end local v1    # "height":I
    .end local v2    # "heightValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    .line 655
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/lenovo/internal/widget/ActionBarContextView;->killMode()V

    .line 656
    new-instance v3, Lcom/lenovo/internal/view/StandaloneActionMode;

    iget-object v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 657
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_6

    move v7, v8

    .line 656
    :goto_1
    invoke-direct {v3, v0, v10, v6, v7}, Lcom/lenovo/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/lenovo/internal/widget/ActionBarContextView;Llenovo/view/ActionMode$Callback;Z)V

    .line 658
    .local v3, "mode":Llenovo/view/ActionMode;
    invoke-virtual {v3}, Llenovo/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-interface {p1, v3, v7}, Llenovo/view/ActionMode$Callback;->onCreateActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 659
    invoke-virtual {v3}, Llenovo/view/ActionMode;->invalidate()V

    .line 660
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v3}, Lcom/lenovo/internal/widget/ActionBarContextView;->initForMode(Llenovo/view/ActionMode;)V

    .line 661
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v9}, Lcom/lenovo/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 662
    iput-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 663
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_2

    .line 664
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 666
    :cond_2
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 667
    const/16 v8, 0x20

    .line 666
    invoke-virtual {v7, v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 669
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 670
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 676
    .end local v3    # "mode":Llenovo/view/ActionMode;
    :cond_3
    :goto_2
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v7, :cond_4

    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_4

    .line 677
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-interface {v7, v8}, Llenovo/app/ActivityBarActivityImpl;->onSupportActionModeStarted(Llenovo/view/ActionMode;)V

    .line 679
    :cond_4
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    return-object v7

    .line 638
    :cond_5
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 639
    const v10, 0x90c000a

    .line 638
    invoke-virtual {v7, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    .line 640
    .local v5, "stub":Landroid/view/ViewStub;
    if-eqz v5, :cond_1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v7, v10, :cond_1

    .line 642
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 643
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/ActionBarContextView;

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 645
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 646
    const v10, 0x90a0005

    .line 645
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 647
    .local v4, "splitActionMode":Z
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v7, v10}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 648
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v4}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 649
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    goto/16 :goto_0

    .end local v4    # "splitActionMode":Z
    .end local v5    # "stub":Landroid/view/ViewStub;
    :cond_6
    move v7, v9

    .line 657
    goto/16 :goto_1

    .line 673
    .restart local v3    # "mode":Llenovo/view/ActionMode;
    :cond_7
    iput-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    goto :goto_2
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0}, Llenovo/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    .line 601
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    const/4 v0, 0x1

    .line 447
    sparse-switch p1, :sswitch_data_0

    .line 467
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result v0

    return v0

    .line 449
    :sswitch_0
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    .line 450
    return v0

    .line 452
    :sswitch_1
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    .line 453
    return v0

    .line 455
    :sswitch_2
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    .line 456
    return v0

    .line 458
    :sswitch_3
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    .line 459
    return v0

    .line 461
    :sswitch_4
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    .line 462
    return v0

    .line 464
    :sswitch_5
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasEmbeddedTabsSup:Z

    .line 465
    return v0

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_5
    .end sparse-switch
.end method
