.class Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-wrap0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-get1(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-get1(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 140
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-get3(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-set2(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 143
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-get0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 144
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-get2(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-set1(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 138
    :cond_0
    return-void
.end method
