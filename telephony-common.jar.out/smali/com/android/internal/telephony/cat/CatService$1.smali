.class Lcom/android/internal/telephony/cat/CatService$1;
.super Landroid/os/Handler;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 280
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 298
    :cond_0
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 299
    const-string/jumbo v0, "[Reset Disable Display Text flag because timeout"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->-set0(Lcom/android/internal/telephony/cat/CatService;Z)Z

    .line 279
    :cond_1
    return-void

    .line 283
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cache DISPLAY_TEXT time out, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->-wrap4(Lcom/android/internal/telephony/cat/CatService;I)V

    goto :goto_0

    .line 287
    :sswitch_1
    const-string/jumbo v0, "modem MODEM_EVDL_CALL_CONN_TIMEOUT timout"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get5(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get5(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->-set4(Lcom/android/internal/telephony/cat/CatService;I)I

    goto :goto_0

    .line 292
    :sswitch_2
    const-string/jumbo v0, "modem MODEM_EVDL_CALL_DISCONN_TIMEOUT timout"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get6(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v0

    if-lez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get6(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->-set5(Lcom/android/internal/telephony/cat/CatService;I)I

    goto :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x2e -> :sswitch_0
    .end sparse-switch
.end method
