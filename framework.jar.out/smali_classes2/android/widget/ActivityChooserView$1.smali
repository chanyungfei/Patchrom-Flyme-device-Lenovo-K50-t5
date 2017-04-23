.class Landroid/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 138
    iput-object p1, p0, Landroid/widget/ActivityChooserView$1;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 144
    invoke-static {}, Landroid/widget/ActivityChooserView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "ActivityChooserView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mModelDataSetOberver.onChanged, mIsAttachedToWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    iget-object v2, p0, Landroid/widget/ActivityChooserView$1;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v2}, Landroid/widget/ActivityChooserView;->-get6(Landroid/widget/ActivityChooserView;)Z

    move-result v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView$1;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-get1(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 141
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 155
    invoke-static {}, Landroid/widget/ActivityChooserView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "ActivityChooserView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mModelDataSetOberver.onInvalidated, mIsAttachedToWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    iget-object v2, p0, Landroid/widget/ActivityChooserView$1;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v2}, Landroid/widget/ActivityChooserView;->-get6(Landroid/widget/ActivityChooserView;)Z

    move-result v2

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView$1;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-get1(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetInvalidated()V

    .line 152
    return-void
.end method
