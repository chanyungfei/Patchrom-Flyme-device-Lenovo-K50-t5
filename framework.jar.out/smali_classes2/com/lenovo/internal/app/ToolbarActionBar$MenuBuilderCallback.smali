.class final Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/app/ToolbarActionBar;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/internal/app/ToolbarActionBar;Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/app/ToolbarActionBar;

    .prologue
    invoke-direct {p0, p1}, Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 634
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get5(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get2(Lcom/lenovo/internal/app/ToolbarActionBar;)Llenovo/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get5(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get5(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get5(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method
