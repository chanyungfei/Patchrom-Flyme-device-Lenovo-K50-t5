.class Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Llenovo/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .line 370
    invoke-direct {p0, p1}, Llenovo/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    .line 369
    return-void
.end method


# virtual methods
.method public getPopup()Llenovo/widget/ListPopupWindow;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->-get2(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->-get2(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    return-object v0

    .line 378
    :cond_0
    return-object v1
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    invoke-static {v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->-get1(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    invoke-static {v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->-get1(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    invoke-static {v3}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->-get0(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    .line 386
    .local v0, "popup":Llenovo/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    :cond_0
    return v1

    .line 388
    .end local v0    # "popup":Llenovo/widget/ListPopupWindow;
    :cond_1
    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    .line 394
    .local v0, "popup":Llenovo/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->dismiss()V

    .line 396
    const/4 v1, 0x1

    return v1

    .line 398
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
