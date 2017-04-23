.class Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;
.super Landroid/content/BroadcastReceiver;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    .line 367
    .local v1, "wmState":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWorldModeReceiver: action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v2, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const-string/jumbo v2, "worldModeState"

    .line 370
    const/4 v3, -0x1

    .line 369
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 371
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wmState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 372
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    .line 364
    :cond_0
    return-void
.end method
