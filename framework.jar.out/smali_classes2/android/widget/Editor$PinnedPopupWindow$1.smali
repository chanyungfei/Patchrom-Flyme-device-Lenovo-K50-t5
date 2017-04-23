.class Landroid/widget/Editor$PinnedPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$PinnedPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$PinnedPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$PinnedPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$PinnedPopupWindow;

    .prologue
    .line 2579
    iput-object p1, p0, Landroid/widget/Editor$PinnedPopupWindow$1;->this$1:Landroid/widget/Editor$PinnedPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2582
    if-nez p1, :cond_1

    .line 2583
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow$1;->this$1:Landroid/widget/Editor$PinnedPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2586
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow$1;->this$1:Landroid/widget/Editor$PinnedPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    .line 2587
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow$1;->this$1:Landroid/widget/Editor$PinnedPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 2589
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow$1;->this$1:Landroid/widget/Editor$PinnedPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 2581
    :cond_1
    return-void
.end method
