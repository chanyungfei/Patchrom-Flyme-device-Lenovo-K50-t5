.class Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;
.super Landroid/os/Handler;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PppoeHandler"
.end annotation


# instance fields
.field private mCancelCallback:Z

.field private mController:Lcom/android/internal/util/StateMachine;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "target"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 13441
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13442
    iput-object p3, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->mController:Lcom/android/internal/util/StateMachine;

    .line 13440
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 13446
    const-string/jumbo v0, "WifiStateMachine"

    const-string/jumbo v1, "Handle start PPPOE message!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13448
    new-instance v9, Landroid/net/DhcpResults;

    invoke-direct {v9}, Landroid/net/DhcpResults;-><init>()V

    .line 13449
    .local v9, "pppoeResult":Landroid/net/DhcpResults;
    monitor-enter p0

    .line 13451
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->mCancelCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 13453
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 13454
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "PPPOE_STATE_CONNECTING"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap61(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 13455
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    .line 13456
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/PPPOEConfig;->mru:I

    .line 13457
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/PPPOEConfig;->MSS:I

    .line 13455
    invoke-static/range {v0 .. v9}, Landroid/net/NetworkUtils;->runPPPOE(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIILandroid/net/DhcpResults;)I

    move-result v11

    .line 13458
    .local v11, "result":I
    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runPPPOE result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13459
    if-nez v11, :cond_1

    .line 13460
    const/4 v10, 0x1

    .line 13461
    .local v10, "event":I
    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PPPoE succeeded, pppoeResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13462
    monitor-enter p0

    .line 13463
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->mCancelCallback:Z

    if-nez v0, :cond_0

    .line 13464
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->mController:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    monitor-exit p0

    .line 13445
    .end local v10    # "event":I
    :goto_0
    return-void

    .line 13449
    .end local v11    # "result":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 13462
    .restart local v10    # "event":I
    .restart local v11    # "result":I
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 13468
    .end local v10    # "event":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap80(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 13469
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "FAILURE"

    invoke-static {v0, v1, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;I)V

    .line 13470
    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PPPoE failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/NetworkUtils;->getPPPOEError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .locals 1
    .param p1, "cancelCallback"    # Z

    .prologue
    monitor-enter p0

    .line 13475
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine$PppoeHandler;->mCancelCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 13474
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
