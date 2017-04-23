.class Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Llenovo/widget/ActionMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 895
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    invoke-direct {p0, p1}, Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Llenovo/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public getPopup()Llenovo/widget/ListPopupWindow;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 898
    iget-object v1, p0, Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-static {v1}, Llenovo/widget/ActionMenuPresenter;->-get1(Llenovo/widget/ActionMenuPresenter;)Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-static {v0}, Llenovo/widget/ActionMenuPresenter;->-get1(Llenovo/widget/ActionMenuPresenter;)Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    :cond_0
    return-object v0
.end method
