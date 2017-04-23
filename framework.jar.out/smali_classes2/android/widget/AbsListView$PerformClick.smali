.class Landroid/widget/AbsListView$PerformClick;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    .line 3212
    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3221
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3222
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3223
    .local v1, "motionPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get8(Landroid/widget/AbsListView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3236
    :cond_0
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/widget/AbsListView;->-get18()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3237
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PerformClick error mDataChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3238
    const-string/jumbo v5, ", isAttachedToWindow = "

    .line 3237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3238
    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v5

    .line 3237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3239
    const-string/jumbo v5, ", adapter = "

    .line 3237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3239
    const-string/jumbo v5, ", mItemCount = "

    .line 3237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3239
    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mItemCount:I

    .line 3237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3240
    const-string/jumbo v5, ", motionPosition = "

    .line 3237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3241
    const-string/jumbo v5, ", sameWindow = "

    .line 3237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3241
    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    move-result v5

    .line 3237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :cond_1
    return-void

    .line 3223
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3224
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v3, :cond_0

    .line 3225
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 3226
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    move-result v3

    .line 3223
    if-eqz v3, :cond_0

    .line 3227
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3230
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 3231
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3232
    return-void
.end method
