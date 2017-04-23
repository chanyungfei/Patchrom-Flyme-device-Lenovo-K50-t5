.class Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 405
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.internal.telephony.etws"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const-string/jumbo v2, "subscription"

    .line 407
    const-wide/16 v4, -0x1

    .line 406
    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 408
    .local v0, "etws_sub":J
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive EVENT_ETWS_ALARM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->-wrap0(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->-get1(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->-get0(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/EtwsNotification;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/EtwsNotification;-><init>()V

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->closeEtwsChannel(Lcom/mediatek/internal/telephony/EtwsNotification;)V

    .line 411
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->stopEtwsAlarm()V

    .line 404
    .end local v0    # "etws_sub":J
    :cond_0
    return-void
.end method
