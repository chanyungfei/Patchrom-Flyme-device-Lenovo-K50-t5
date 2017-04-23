.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;
.super Ljava/lang/Object;
.source "CABContentLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;
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
    .line 467
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-set0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 468
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 473
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-set0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 474
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get3(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 472
    :goto_0
    return-void

    .line 476
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get1(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    .line 480
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get1(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 488
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-set0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 492
    return-void
.end method
