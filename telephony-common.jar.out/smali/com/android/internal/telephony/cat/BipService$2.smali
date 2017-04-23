.class Lcom/android/internal/telephony/cat/BipService$2;
.super Landroid/content/BroadcastReceiver;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipService;

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1856
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworkConnReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipService;->-get9(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1857
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipService;->-get7(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v3

    .line 1856
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1857
    const-string/jumbo v3, " , "

    .line 1856
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1857
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipService;->-get0(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v3

    .line 1856
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get1(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipChannelManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1859
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isClientChannelOpened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1860
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipService;->-get1(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipChannelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->isClientChannelOpened()Z

    move-result v3

    .line 1859
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1863
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get9(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get0(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1865
    :goto_0
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Connectivity changed onReceive Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {v1, v2, p2}, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;-><init>(Lcom/android/internal/telephony/cat/BipService;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1868
    .local v0, "rt":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1869
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Connectivity changed onReceive Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    .end local v0    # "rt":Ljava/lang/Thread;
    :cond_1
    return-void

    .line 1864
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$2;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get7(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method
