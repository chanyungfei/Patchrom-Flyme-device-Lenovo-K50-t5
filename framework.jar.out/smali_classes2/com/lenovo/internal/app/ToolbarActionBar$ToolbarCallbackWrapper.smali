.class Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Llenovo/widget/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/app/ToolbarActionBar;Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/app/ToolbarActionBar;
    .param p2, "wrapped"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    .line 511
    invoke-direct {p0, p2}, Llenovo/widget/WindowCallbackWrapper;-><init>(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 510
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4
    .param p1, "featureId"    # I

    .prologue
    const/4 v3, 0x0

    .line 526
    packed-switch p1, :pswitch_data_0

    .line 545
    :cond_0
    invoke-super {p0, p1}, Llenovo/widget/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 528
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get3(Lcom/lenovo/internal/app/ToolbarActionBar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-virtual {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->populateOptionsMenu()V

    .line 531
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get2(Lcom/lenovo/internal/app/ToolbarActionBar;)Llenovo/widget/Toolbar;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v2}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get1(Lcom/lenovo/internal/app/ToolbarActionBar;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Llenovo/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get3(Lcom/lenovo/internal/app/ToolbarActionBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get5(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->-wrap0(Lcom/lenovo/internal/app/ToolbarActionBar;)Landroid/view/Menu;

    move-result-object v0

    .line 538
    .local v0, "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get5(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v1

    invoke-interface {v1, p1, v3, v0}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get5(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    .line 538
    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1, v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->-wrap1(Lcom/lenovo/internal/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 516
    invoke-super {p0, p1, p2, p3}, Llenovo/widget/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 517
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get3(Lcom/lenovo/internal/app/ToolbarActionBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->-get0(Lcom/lenovo/internal/app/ToolbarActionBar;)Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 519
    iget-object v1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/internal/app/ToolbarActionBar;->-set0(Lcom/lenovo/internal/app/ToolbarActionBar;Z)Z

    goto :goto_0
.end method
