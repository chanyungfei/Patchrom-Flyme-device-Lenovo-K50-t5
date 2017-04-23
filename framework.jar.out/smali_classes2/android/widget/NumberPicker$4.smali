.class Landroid/widget/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 800
    iput-object p1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 802
    if-eqz p2, :cond_1

    .line 803
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 805
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 812
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$TextColorHelper;

    move-result-object v1

    iget v1, v1, Landroid/widget/NumberPicker$TextColorHelper;->mFocusColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 817
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, p1}, Landroid/widget/NumberPicker;->-wrap9(Landroid/widget/NumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
