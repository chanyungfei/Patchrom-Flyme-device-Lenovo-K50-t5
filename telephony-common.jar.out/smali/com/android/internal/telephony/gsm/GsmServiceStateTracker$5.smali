.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;
.super Landroid/database/ContentObserver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string/jumbo v2, "Data Connection Setting changed"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 530
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get5(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v2, 0x69

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v2, 0x68

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
