.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 7155
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7158
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7160
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7161
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7162
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/BaseDhcpStateMachine;->doQuit()V

    .line 7165
    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get79()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7166
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7167
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/DhcpStateMachine;->doQuit()V

    .line 7171
    :cond_2
    const-string/jumbo v2, "init.svc.wpa_supplicant"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7172
    .local v1, "suppState":Ljava/lang/String;
    if-nez v1, :cond_3

    const-string/jumbo v1, "unknown"

    .line 7173
    :cond_3
    const-string/jumbo v2, "init.svc.p2p_supplicant"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7174
    .local v0, "p2pSuppState":Ljava/lang/String;
    if-nez v0, :cond_4

    const-string/jumbo v0, "unknown"

    .line 7176
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SupplicantStoppingState: stopSupplicant  init.svc.wpa_supplicant="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7178
    const-string/jumbo v4, " init.svc.p2p_supplicant="

    .line 7176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7179
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMonitor;->stopSupplicant()V

    .line 7182
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 7183
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set69(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v4

    .line 7182
    const v5, 0x20011

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 7183
    const-wide/16 v4, 0x1388

    .line 7182
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 7184
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap76(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 7185
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v2

    const v3, 0x2006f

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 7157
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7189
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 7191
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 7223
    return v2

    .line 7193
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Supplicant connection received while stopping"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7225
    :cond_0
    :goto_0
    return v3

    .line 7196
    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Supplicant connection lost"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7197
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 7198
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 7201
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 7202
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Timed out on a supplicant stop, kill and proceed"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7203
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 7205
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMonitor;->quitMonitoring()V

    .line 7206
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 7220
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 7191
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_3
        0x2000c -> :sswitch_3
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20011 -> :sswitch_2
        0x20015 -> :sswitch_3
        0x20018 -> :sswitch_3
        0x20048 -> :sswitch_3
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_3
        0x20055 -> :sswitch_3
        0x2005a -> :sswitch_3
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
