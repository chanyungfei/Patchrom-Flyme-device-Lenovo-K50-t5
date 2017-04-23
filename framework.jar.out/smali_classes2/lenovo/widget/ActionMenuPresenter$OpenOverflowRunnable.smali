.class Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/ActionMenuPresenter;
    .param p2, "popup"    # Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 881
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    iput-object p2, p0, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    .line 881
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 886
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-static {v1}, Llenovo/widget/ActionMenuPresenter;->-get2(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 887
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-static {v1}, Llenovo/widget/ActionMenuPresenter;->-get3(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 888
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Llenovo/widget/ActionMenuPresenter;

    iget-object v2, p0, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    invoke-static {v1, v2}, Llenovo/widget/ActionMenuPresenter;->-set1(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$OverflowPopup;)Llenovo/widget/ActionMenuPresenter$OverflowPopup;

    .line 891
    :cond_0
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-static {v1, v3}, Llenovo/widget/ActionMenuPresenter;->-set2(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;)Llenovo/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 885
    return-void
.end method
