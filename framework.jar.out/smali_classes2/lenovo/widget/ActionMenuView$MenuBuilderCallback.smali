.class Llenovo/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Llenovo/widget/ActionMenuView;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/ActionMenuView;

    .prologue
    .line 969
    iput-object p1, p0, Llenovo/widget/ActionMenuView$MenuBuilderCallback;->this$0:Llenovo/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/ActionMenuView;Llenovo/widget/ActionMenuView$MenuBuilderCallback;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/ActionMenuView;

    .prologue
    invoke-direct {p0, p1}, Llenovo/widget/ActionMenuView$MenuBuilderCallback;-><init>(Llenovo/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 972
    iget-object v0, p0, Llenovo/widget/ActionMenuView$MenuBuilderCallback;->this$0:Llenovo/widget/ActionMenuView;

    invoke-static {v0}, Llenovo/widget/ActionMenuView;->-get1(Llenovo/widget/ActionMenuView;)Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Llenovo/widget/ActionMenuView$MenuBuilderCallback;->this$0:Llenovo/widget/ActionMenuView;

    invoke-static {v0}, Llenovo/widget/ActionMenuView;->-get1(Llenovo/widget/ActionMenuView;)Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Llenovo/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 972
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 978
    iget-object v0, p0, Llenovo/widget/ActionMenuView$MenuBuilderCallback;->this$0:Llenovo/widget/ActionMenuView;

    invoke-static {v0}, Llenovo/widget/ActionMenuView;->-get0(Llenovo/widget/ActionMenuView;)Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Llenovo/widget/ActionMenuView$MenuBuilderCallback;->this$0:Llenovo/widget/ActionMenuView;

    invoke-static {v0}, Llenovo/widget/ActionMenuView;->-get0(Llenovo/widget/ActionMenuView;)Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 977
    :cond_0
    return-void
.end method
