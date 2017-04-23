.class Llenovo/widget/PopupWindow$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/PopupWindow;


# direct methods
.method constructor <init>(Llenovo/widget/PopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/PopupWindow;

    .prologue
    .line 154
    iput-object p1, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 157
    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    invoke-static {v0}, Llenovo/widget/PopupWindow;->-get3(Llenovo/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    invoke-static {v0}, Llenovo/widget/PopupWindow;->-get3(Llenovo/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 158
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    invoke-static {v0}, Llenovo/widget/PopupWindow;->-get9(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    invoke-static {v0}, Llenovo/widget/PopupWindow;->-get9(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 159
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 162
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    iget-object v0, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    iget-object v3, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    invoke-static {v3}, Llenovo/widget/PopupWindow;->-get4(Llenovo/widget/PopupWindow;)I

    move-result v3

    iget-object v4, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    invoke-static {v4}, Llenovo/widget/PopupWindow;->-get5(Llenovo/widget/PopupWindow;)I

    move-result v4

    .line 163
    iget-object v5, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    invoke-static {v5}, Llenovo/widget/PopupWindow;->-get6(Llenovo/widget/PopupWindow;)I

    move-result v5

    .line 162
    invoke-static/range {v0 .. v5}, Llenovo/widget/PopupWindow;->-wrap0(Llenovo/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-static {v7, v0}, Llenovo/widget/PopupWindow;->-wrap1(Llenovo/widget/PopupWindow;Z)V

    .line 164
    iget-object v3, p0, Llenovo/widget/PopupWindow$1;->this$0:Llenovo/widget/PopupWindow;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Llenovo/widget/PopupWindow;->update(IIIIZ)V

    .line 156
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 157
    :cond_1
    const/4 v1, 0x0

    .local v1, "anchor":Landroid/view/View;
    goto :goto_0
.end method
