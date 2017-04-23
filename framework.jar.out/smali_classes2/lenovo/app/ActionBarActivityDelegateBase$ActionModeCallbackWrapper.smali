.class Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Llenovo/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarActivityDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Llenovo/view/ActionMode$Callback;

.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegateBase;


# direct methods
.method public constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p2, "wrapped"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 1463
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1464
    iput-object p2, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Llenovo/view/ActionMode$Callback;

    .line 1463
    return-void
.end method


# virtual methods
.method public isEditorCallBack()Z
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Llenovo/view/ActionMode$Callback;

    invoke-interface {v0}, Llenovo/view/ActionMode$Callback;->isEditorCallBack()Z

    move-result v0

    return v0
.end method

.method public onActionItemClicked(Llenovo/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Llenovo/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1476
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Llenovo/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Llenovo/view/ActionMode$Callback;->onActionItemClicked(Llenovo/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Llenovo/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1468
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Llenovo/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Llenovo/view/ActionMode$Callback;->onCreateActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Llenovo/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Llenovo/view/ActionMode;

    .prologue
    const/4 v3, 0x0

    .line 1480
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Llenovo/view/ActionMode$Callback;

    invoke-interface {v1, p1}, Llenovo/view/ActionMode$Callback;->onDestroyActionMode(Llenovo/view/ActionMode;)V

    .line 1481
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    .line 1482
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v2, v2, Llenovo/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1483
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1491
    :cond_0
    :goto_0
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_1

    .line 1492
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 1494
    :cond_1
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 1496
    :try_start_0
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v2, v2, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-interface {v1, v2}, Llenovo/app/ActivityBarActivityImpl;->onSupportActionModeFinished(Llenovo/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    :cond_2
    :goto_1
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iput-object v3, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 1479
    return-void

    .line 1484
    :cond_3
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_0

    .line 1485
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 1486
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1488
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0

    .line 1497
    :catch_0
    move-exception v0

    .local v0, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_1
.end method

.method public onPrepareActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Llenovo/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1472
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;->mWrapped:Llenovo/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Llenovo/view/ActionMode$Callback;->onPrepareActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
