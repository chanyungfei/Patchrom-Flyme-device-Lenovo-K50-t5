.class Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarBackgroundDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContainer;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ActionBarContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get2(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get5(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get3(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get5(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get2(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 446
    return v1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get3(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get5(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get5(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 451
    :cond_1
    return v2

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get0(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-wrap0(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 455
    return v1

    .line 459
    :cond_3
    return v2
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get2(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 434
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 438
    return-void
.end method
