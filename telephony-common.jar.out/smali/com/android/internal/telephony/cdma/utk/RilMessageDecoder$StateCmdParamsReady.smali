.class Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;
.super Lcom/android/internal/util/State;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateCmdParamsReady"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-get0(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-get0(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-get0(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-wrap2(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-get2(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-wrap3(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/util/IState;)V

    .line 167
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StateCmdParamsReady expecting CMD_PARAMS_READY=2 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    iget v1, p1, Landroid/os/Message;->what:I

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-wrap1(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Landroid/os/Message;)V

    goto :goto_0
.end method
