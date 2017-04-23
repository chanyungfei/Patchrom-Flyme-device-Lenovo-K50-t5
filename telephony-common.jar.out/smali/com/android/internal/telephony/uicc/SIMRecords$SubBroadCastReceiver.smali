.class Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    .prologue
    .line 3299
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3302
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->-get2(Lcom/android/internal/telephony/uicc/SIMRecords;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3303
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string/jumbo v2, "SubBroadCastReceiver receive ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3304
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->-set2(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    .line 3305
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->-get1(Lcom/android/internal/telephony/uicc/SIMRecords;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 3300
    :cond_0
    return-void
.end method
