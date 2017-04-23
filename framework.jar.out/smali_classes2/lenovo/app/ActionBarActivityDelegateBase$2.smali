.class Llenovo/app/ActionBarActivityDelegateBase$2;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/app/ActionBarActivityDelegateBase;->ensureSubDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegateBase;


# direct methods
.method constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/app/ActionBarActivityDelegateBase;

    .prologue
    .line 315
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase$2;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 319
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 320
    .local v1, "top":I
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase$2;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-static {v2, v1}, Llenovo/app/ActionBarActivityDelegateBase;->-wrap0(Llenovo/app/ActionBarActivityDelegateBase;I)I

    move-result v0

    .line 322
    .local v0, "newTop":I
    if-eq v1, v0, :cond_0

    .line 324
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 326
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 327
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 323
    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    return-object v2

    .line 329
    :cond_0
    return-object p2
.end method
