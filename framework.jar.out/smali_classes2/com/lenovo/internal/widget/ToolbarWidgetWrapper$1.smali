.class Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;-><init>(Llenovo/widget/Toolbar;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

.field final synthetic this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V
    .locals 7
    .param p1, "this$0"    # Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    .prologue
    const/4 v2, 0x0

    .line 190
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/lenovo/internal/view/menu/ActionMenuItem;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->-get2(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Llenovo/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 192
    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v3}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->-get1(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    const v3, 0x102002c

    move v4, v2

    move v5, v2

    .line 191
    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    .line 190
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->-get3(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->-get0(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->-get3(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 194
    :cond_0
    return-void
.end method
