.class Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;
.super Lcom/android/internal/util/State;
.source "BipRilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipRilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-wrap0(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-get1(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-wrap3(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/util/IState;)V

    .line 149
    :cond_0
    :goto_0
    return v2

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StateStart unexpected expecting START=1 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget v1, p1, Landroid/os/Message;->what:I

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
