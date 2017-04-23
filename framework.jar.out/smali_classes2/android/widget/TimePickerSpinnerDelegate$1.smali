.class Landroid/widget/TimePickerSpinnerDelegate$1;
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
    .line 92
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap2(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 108
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap0(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 111
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isCts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-get2(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    if-ne v2, p3, :cond_1

    .line 116
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    const v1, 0x90200d4

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    goto :goto_0

    .line 122
    :cond_2
    if-ne v2, p3, :cond_3

    .line 124
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    const v1, 0x90200d5

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    goto :goto_0
.end method
