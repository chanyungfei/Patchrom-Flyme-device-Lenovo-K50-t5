.class Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;
.super Ljava/lang/Object;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Llenovo/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;Llenovo/view/ActionProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;->this$1:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;->this$1:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v0, v0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Llenovo/view/ActionProvider;

    invoke-virtual {v0}, Llenovo/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;->this$1:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v0, v0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    invoke-static {v0}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->-get1(Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;->this$1:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v0, v0, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuItemWrapperICS;->wrappedSetVisible(Z)Landroid/view/MenuItem;

    .line 403
    :cond_0
    return-void
.end method
