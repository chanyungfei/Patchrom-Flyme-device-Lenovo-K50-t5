.class Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
.super Landroid/os/Handler;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    return-void
.end method

.method private deinitHdmi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap12(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 192
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap0(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 193
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-virtual {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isSignalOutputting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap4(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 190
    :cond_0
    return-void
.end method

.method private initHdmi()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap8(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get6(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap0(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 201
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get1(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap4(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 202
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap10(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 167
    const-string/jumbo v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap9(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get5(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get5(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get5(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v1

    .line 168
    if-eqz v1, :cond_1

    .line 170
    :cond_0
    const-string/jumbo v1, "MtkHdmiService"

    const-string/jumbo v2, "handler thread is error"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap9(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    return-void

    .line 173
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    :goto_0
    return-void

    .line 175
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->initHdmi()V

    .line 176
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-set3(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->deinitHdmi()V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, "state":I
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v1, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap7(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
