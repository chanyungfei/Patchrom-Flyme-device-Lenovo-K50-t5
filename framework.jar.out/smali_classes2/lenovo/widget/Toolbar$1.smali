.class Llenovo/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Llenovo/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/Toolbar;


# direct methods
.method constructor <init>(Llenovo/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/Toolbar;

    .prologue
    .line 158
    iput-object p1, p0, Llenovo/widget/Toolbar$1;->this$0:Llenovo/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 161
    iget-object v0, p0, Llenovo/widget/Toolbar$1;->this$0:Llenovo/widget/Toolbar;

    invoke-static {v0}, Llenovo/widget/Toolbar;->-get2(Llenovo/widget/Toolbar;)Llenovo/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Llenovo/widget/Toolbar$1;->this$0:Llenovo/widget/Toolbar;

    invoke-static {v0}, Llenovo/widget/Toolbar;->-get2(Llenovo/widget/Toolbar;)Llenovo/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Llenovo/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
