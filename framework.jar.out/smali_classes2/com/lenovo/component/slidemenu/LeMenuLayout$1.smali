.class Lcom/lenovo/component/slidemenu/LeMenuLayout$1;
.super Ljava/lang/Object;
.source "LeMenuLayout.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupTitlePopupMenu(Lcom/lenovo/component/slidemenu/LeTitleMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/component/slidemenu/LeMenuLayout;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$1;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "popupMenu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$1;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    invoke-static {v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->-get6(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x90c0041

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x9020088

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 464
    return-void
.end method
