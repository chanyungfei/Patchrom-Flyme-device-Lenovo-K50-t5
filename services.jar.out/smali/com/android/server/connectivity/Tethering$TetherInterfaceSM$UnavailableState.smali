.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnavailableState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .prologue
    .line 2130
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2133
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "[ISM_Unavailable] enter, sendTetherStateChangedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 2135
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 2142
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/Tethering;->-set2(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 2143
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/Tethering;->-set3(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 2144
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;)V

    .line 2132
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2149
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ISM_Unavailable] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2150
    const-string/jumbo v3, " processMessage what="

    .line 2149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2150
    iget v3, p1, Landroid/os/Message;->what:I

    .line 2149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const/4 v0, 0x1

    .line 2152
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2157
    const/4 v0, 0x0

    .line 2160
    :goto_0
    return v0

    .line 2154
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2152
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
