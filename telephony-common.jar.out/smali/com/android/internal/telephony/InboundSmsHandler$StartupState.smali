.class Lcom/android/internal/telephony/InboundSmsHandler$StartupState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartupState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StartupState.processMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 412
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 431
    const/4 v0, 0x0

    return v0

    .line 419
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap1(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V

    .line 420
    return v3

    .line 423
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap3(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    .line 424
    return v3

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
        0xbb9 -> :sswitch_0
    .end sparse-switch
.end method
