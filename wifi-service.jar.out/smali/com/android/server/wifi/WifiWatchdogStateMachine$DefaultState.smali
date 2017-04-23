.class Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 534
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 533
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 539
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 570
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap1(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap7(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 573
    :cond_0
    :goto_0
    :sswitch_0
    return v3

    .line 541
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 542
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v1, "Updating wifi-watchdog secure settings"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap2(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set3(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_0

    .line 557
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 560
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 566
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto :goto_0

    .line 539
    :sswitch_data_0
    .sparse-switch
        0x21002 -> :sswitch_0
        0x21003 -> :sswitch_2
        0x21004 -> :sswitch_0
        0x21005 -> :sswitch_0
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_0
        0x21008 -> :sswitch_3
        0x21009 -> :sswitch_4
        0x2100b -> :sswitch_0
        0x21028 -> :sswitch_0
        0x2102c -> :sswitch_5
        0x25015 -> :sswitch_0
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method
