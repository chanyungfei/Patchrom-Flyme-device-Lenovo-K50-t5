.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;
.super Ljava/lang/Object;
.source "CABContentLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;->showMoreAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-set0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 516
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-set0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 520
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 524
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-set0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 530
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get1(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-wrap3(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    .line 533
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-wrap5(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    .line 534
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get2(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    return-void
.end method
