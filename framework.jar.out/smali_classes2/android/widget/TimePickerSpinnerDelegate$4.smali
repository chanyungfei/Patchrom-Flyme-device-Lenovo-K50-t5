.class Landroid/widget/TimePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 205
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 5
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x0

    .line 207
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap2(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 208
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 209
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-get2(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->-set0(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    .line 210
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap1(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 211
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap0(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 214
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isCts()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-get1(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 217
    .local v0, "hour":I
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-get2(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    if-ne v4, v0, :cond_2

    .line 220
    const v1, 0x90200d4

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    .line 206
    .end local v0    # "hour":I
    :cond_0
    :goto_1
    return-void

    .line 209
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 223
    .restart local v0    # "hour":I
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    goto :goto_1

    .line 226
    :cond_3
    if-ne v4, v0, :cond_4

    .line 228
    const v1, 0x90200d5

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    goto :goto_1
.end method
