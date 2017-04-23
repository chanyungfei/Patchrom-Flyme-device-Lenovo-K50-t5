.class Landroid/net/DhcpStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 198
    iput-object p1, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v0}, Landroid/net/DhcpStateMachine;->-get8(Landroid/net/DhcpStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v0}, Landroid/net/DhcpStateMachine;->-get2(Landroid/net/DhcpStateMachine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get1(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/DhcpStateMachine;->-set1(Landroid/net/DhcpStateMachine;Z)Z

    .line 200
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 208
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 219
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error! unhandled message  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return v3

    .line 211
    :sswitch_0
    const-string/jumbo v1, "DhcpStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error! Failed to handle a DHCP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v0}, Landroid/net/DhcpStateMachine;->-get7(Landroid/net/DhcpStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "V6"

    .line 211
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string/jumbo v2, " renewal on "

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    iget-object v2, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get6(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v0}, Landroid/net/DhcpStateMachine;->-get4(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 212
    :cond_0
    const-string/jumbo v0, "V4"

    goto :goto_1

    .line 216
    :sswitch_1
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v0, v3}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Z)V

    goto :goto_0

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x30003 -> :sswitch_0
        0x30009 -> :sswitch_1
    .end sparse-switch
.end method
