.class Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1099
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1098
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1111
    const/4 v0, 0x0

    return v0

    .line 1106
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1107
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get20(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get17(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap9(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1113
    :cond_0
    return v2

    .line 1104
    nop

    :pswitch_data_0
    .packed-switch 0x21008
        :pswitch_0
    .end packed-switch
.end method
