.class Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 818
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 817
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 823
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 833
    const/4 v0, 0x0

    return v0

    .line 825
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 826
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get20(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get17(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap9(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 831
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get16(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap9(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 823
    nop

    :pswitch_data_0
    .packed-switch 0x21006
        :pswitch_0
    .end packed-switch
.end method
