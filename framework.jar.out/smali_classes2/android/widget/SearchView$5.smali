.class Landroid/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SearchView;

    .prologue
    .line 1004
    iput-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1018
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1020
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v1, p1, p2, p3}, Landroid/widget/SearchView;->-wrap2(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1025
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/SearchView$SearchAutoComplete;->-wrap0(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1026
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1027
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1030
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-wrap8(Landroid/widget/SearchView;)V

    .line 1031
    return v4

    .line 1034
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 1035
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1036
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1037
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v2, v3}, Landroid/widget/SearchView;->-wrap5(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1039
    return v4

    .line 1043
    .end local v0    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    :cond_2
    return v3
.end method
