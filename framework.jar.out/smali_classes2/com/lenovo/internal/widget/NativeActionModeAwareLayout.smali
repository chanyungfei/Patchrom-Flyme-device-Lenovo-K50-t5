.class public Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;
.super Lcom/lenovo/internal/widget/ContentFrameLayout;
.source "NativeActionModeAwareLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;
    }
.end annotation


# instance fields
.field private mActionModeForChildListener:Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lenovo/internal/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public setActionModeForChildListener(Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;->mActionModeForChildListener:Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    .line 38
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;->mActionModeForChildListener:Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;->mActionModeForChildListener:Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/widget/ContentFrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
