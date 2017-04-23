.class Landroid/net/dhcp/DhcpClient$DhcpRenewingState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRenewingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 902
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 903
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 904
    const v0, 0x8ca0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->mTimeout:I

    .line 902
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 909
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    .line 910
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;)V

    .line 908
    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 2
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .prologue
    .line 922
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 923
    :cond_0
    instance-of v0, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v0, :cond_2

    .line 924
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    .line 925
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get2(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap16(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 921
    :cond_1
    :goto_0
    return-void

    .line 926
    :cond_2
    instance-of v0, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap16(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected sendPacket()Z
    .locals 5

    .prologue
    .line 914
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 915
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 916
    sget-object v3, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 917
    sget-object v4, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 918
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    .line 914
    invoke-static {v2, v0, v3, v4, v1}, Landroid/net/dhcp/DhcpClient;->-wrap5(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method protected timeout()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap16(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 934
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30068

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    .line 932
    return-void
.end method
