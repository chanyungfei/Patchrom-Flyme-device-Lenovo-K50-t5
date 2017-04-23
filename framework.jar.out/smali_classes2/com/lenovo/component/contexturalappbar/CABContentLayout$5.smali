.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;
.super Ljava/lang/Object;
.source "CABContentLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;->initMaskView()V
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
    .line 457
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-wrap1(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->-wrap4(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    .line 459
    :cond_0
    return-void
.end method
