.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRunDhcpv6PDSequence"
.end annotation


# instance fields
.field private mIface:Ljava/lang/String;

.field final synthetic this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$2"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 2608
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2606
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    .line 2609
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    .line 2608
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2613
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .line 2614
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runDhcpv6PD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/NetworkUtils;->runDhcpv6PD(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2616
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finish runDhcpv6PD request error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2617
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpv6PDError()Ljava/lang/String;

    move-result-object v3

    .line 2616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->stopDhcpv6PDSequence()V

    .line 2619
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v1, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2620
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v1, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 2621
    return-void

    .line 2624
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2625
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 2627
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v1, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2628
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finish runDhcpv6PD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    return-void
.end method
