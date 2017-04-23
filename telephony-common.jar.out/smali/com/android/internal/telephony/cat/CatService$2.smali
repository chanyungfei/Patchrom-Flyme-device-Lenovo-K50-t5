.class Lcom/android/internal/telephony/cat/CatService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 322
    const-string/jumbo v3, "android.intent.action.utk.setup_event_list"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received UTK_SETUP_EVENT_LIST_ACTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v3, "UTK_EVENTS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 325
    .local v0, "eventList":[B
    const-string/jumbo v3, "PHONE_ID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 328
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore this event list. phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    return-void

    .line 333
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eventList length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eventList["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->-get2(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/BipService;

    move-result-object v3

    aget-byte v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/BipService;->setBipEventList(I)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3, v0}, Lcom/android/internal/telephony/cat/CatService;->-set3(Lcom/android/internal/telephony/cat/CatService;[B)[B

    .line 321
    .end local v0    # "eventList":[B
    .end local v1    # "i":I
    .end local v2    # "phoneId":I
    :cond_2
    :goto_1
    return-void

    .line 341
    .restart local v0    # "eventList":[B
    .restart local v2    # "phoneId":I
    :cond_3
    const-string/jumbo v3, "eventList is null !!!"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
