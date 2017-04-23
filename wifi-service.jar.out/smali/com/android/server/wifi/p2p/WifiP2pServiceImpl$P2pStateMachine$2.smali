.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v7, 0x23015

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 848
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 850
    const-string/jumbo v2, "mtk.nfc.wfa.p2p.HR_RECEIVE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 851
    const-string/jumbo v2, "mtk.nfc.wfa.p2p.extra.HR_P2P_DEV_INFO"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 852
    .local v1, "token":[B
    if-eqz v1, :cond_1

    .line 853
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v4, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;[B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v7, v5, v6, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 847
    .end local v1    # "token":[B
    :cond_0
    :goto_0
    return-void

    .line 855
    .restart local v1    # "token":[B
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v3, "No HR token!"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 857
    .end local v1    # "token":[B
    :cond_2
    const-string/jumbo v2, "mtk.nfc.wfa.p2p.HS_RECEIVE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 858
    const-string/jumbo v2, "mtk.nfc.wfa.p2p.extra.HS_P2P_DEV_INFO"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 859
    .restart local v1    # "token":[B
    if-eqz v1, :cond_3

    .line 860
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v4, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;[B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v7, v5, v6, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 862
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v3, "No HS token!"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 864
    .end local v1    # "token":[B
    :cond_4
    const-string/jumbo v2, "mtk.nfc.wfa.tag.RECEIVE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 865
    const-string/jumbo v2, "mtk.nfc.wfa.tag.extra.DEV_INFO"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 866
    .restart local v1    # "token":[B
    if-eqz v1, :cond_5

    .line 867
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v4, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;[B)Ljava/lang/String;

    move-result-object v4

    const v5, 0x23014

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 869
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v3, "No device info!"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 871
    .end local v1    # "token":[B
    :cond_6
    const-string/jumbo v2, "com.android.server.WifiManager.action.CLEAR_TMP_GO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v2, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set32(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
