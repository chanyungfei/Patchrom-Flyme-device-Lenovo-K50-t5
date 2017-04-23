.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 620
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 622
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 623
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get0(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 625
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get1(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 660
    :goto_0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 661
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 660
    invoke-static {v0, v1, v2, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap1(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V

    .line 662
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap4(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 663
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap2(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 664
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap0(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 621
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get2(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 643
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get4(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 655
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 657
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
