.class Lcom/lenovo/internal/widget/ActionBarBackgroundDrawableV21;
.super Lcom/lenovo/internal/widget/ActionBarBackgroundDrawable;
.source "ActionBarBackgroundDrawableV21.java"


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/widget/ActionBarContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/lenovo/internal/widget/ActionBarContainer;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawable;-><init>(Lcom/lenovo/internal/widget/ActionBarContainer;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-boolean v0, v0, Lcom/lenovo/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 13
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0
.end method
