.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$6;
.super Ljava/lang/Object;
.source "CABContentLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;->commonAnimation(III)V
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
    .line 502
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$6;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 504
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 505
    .local v0, "animatedValue":I
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$6;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-get0(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setTranslationY(F)V

    .line 503
    return-void
.end method
