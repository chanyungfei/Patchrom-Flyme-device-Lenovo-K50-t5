.class Landroid/widget/AdapterViewAnimator$2;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AdapterViewAnimator;

    .prologue
    .line 857
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 860
    const-string/jumbo v0, "AdapterViewAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handle data change start: mCurrentWindowStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 862
    const-string/jumbo v2, ", mCurrentWindowEnd = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 862
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 863
    const-string/jumbo v2, ", mWhichChild = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 863
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 863
    const-string/jumbo v2, ", item count = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 863
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v2

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 864
    const-string/jumbo v2, ", mOldItemCount = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 864
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 865
    const-string/jumbo v2, ", mPreviousItemCount = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 865
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-static {v2}, Landroid/widget/AdapterViewAnimator;->-get0(Landroid/widget/AdapterViewAnimator;)I

    move-result v2

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 866
    const-string/jumbo v2, ", child count = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 866
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v2

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 867
    const-string/jumbo v2, ", getWindowSize() = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 867
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 868
    const-string/jumbo v2, ", mViewsMap = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 868
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 869
    const-string/jumbo v2, ", mPreviousViews = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 869
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 869
    const-string/jumbo v2, ", this = "

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->handleDataChanged()V

    .line 875
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-static {v0}, Landroid/widget/AdapterViewAnimator;->-get0(Landroid/widget/AdapterViewAnimator;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 876
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/AdapterViewAnimator;->-set0(Landroid/widget/AdapterViewAnimator;Z)Z

    .line 877
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-static {v0}, Landroid/widget/AdapterViewAnimator;->-wrap0(Landroid/widget/AdapterViewAnimator;)V

    .line 882
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 883
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iput v3, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 885
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v1, v1, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 891
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/AdapterViewAnimator;->-set1(Landroid/widget/AdapterViewAnimator;I)I

    .line 893
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->refreshChildren()V

    .line 894
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 896
    const-string/jumbo v0, "AdapterViewAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handle data change end: item count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 897
    const-string/jumbo v2, ",child count = "

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 897
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v2

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 897
    const-string/jumbo v2, ",mCurrentWindowStart = "

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 898
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 898
    const-string/jumbo v2, ",mCurrentWindowEnd = "

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 898
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    const-string/jumbo v2, ",mWhichChild = "

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    const-string/jumbo v2, ",mViewsMap = "

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 900
    const-string/jumbo v2, ",mPreviousViews = "

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 900
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void

    .line 886
    :cond_2
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-static {v0}, Landroid/widget/AdapterViewAnimator;->-get0(Landroid/widget/AdapterViewAnimator;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 887
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v1, v1, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    goto/16 :goto_0
.end method
