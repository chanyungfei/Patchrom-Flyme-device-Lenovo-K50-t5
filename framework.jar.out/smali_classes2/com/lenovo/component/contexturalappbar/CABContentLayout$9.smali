.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;
.super Ljava/lang/Object;
.source "CABContentLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;->hideMoreAnimation(I)V
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
    .line 551
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-set0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 552
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    .line 557
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-set0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 558
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get1(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get2(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 556
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 562
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 567
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-set0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 568
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-wrap3(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    .line 569
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-wrap2(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    .line 570
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-wrap0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-wrap6(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    .line 566
    return-void
.end method
