.class Lcom/android/server/wifi/WifiAutoJoinController$1;
.super Ljava/lang/Object;
.source "WifiAutoJoinController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiAutoJoinController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiAutoJoinController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiAutoJoinController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiAutoJoinController;

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2089
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2090
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2091
    .local v0, "sBuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiAutoJoinController;->-get2(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2092
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiAutoJoinController;->-get0(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;

    move-result-object v2

    .line 2091
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2092
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiAutoJoinController;->-get3(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;

    move-result-object v2

    .line 2091
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2093
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2094
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAutoJoinProfilingInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2096
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiAutoJoinController;->-get1(Lcom/android/server/wifi/WifiAutoJoinController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiAutoJoinController;->mAutoJoinProfilingInfo:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2087
    return-void
.end method
