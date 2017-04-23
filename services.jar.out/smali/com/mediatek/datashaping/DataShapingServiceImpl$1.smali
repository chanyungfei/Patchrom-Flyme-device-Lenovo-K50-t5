.class Lcom/mediatek/datashaping/DataShapingServiceImpl$1;
.super Landroid/database/ContentObserver;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datashaping/DataShapingServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 494
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get1(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "background_power_saving_enable"

    .line 493
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 497
    .local v0, "dataShapingEnabled":Z
    :goto_0
    const-string/jumbo v1, "0"

    const-string/jumbo v2, "persist.datashaping.enable"

    const-string/jumbo v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 498
    const/4 v0, 0x0

    .line 499
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "persist.datashaping.enable is false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get3(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 507
    if-eqz v0, :cond_4

    .line 508
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "data shaping enabled, start handler thread!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "DataShapingService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-set3(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 510
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get7(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 511
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    new-instance v2, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    iget-object v4, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v4}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get7(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-set2(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    .line 512
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->sendEmptyMessage(I)Z

    .line 514
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 515
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->registerReceiver()V

    .line 527
    :goto_2
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-set1(Lcom/mediatek/datashaping/DataShapingServiceImpl;Z)Z

    .line 492
    :cond_1
    return-void

    .line 493
    .end local v0    # "dataShapingEnabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "dataShapingEnabled":Z
    goto :goto_0

    .line 500
    :cond_3
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "persist.datashaping.enable"

    const-string/jumbo v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    const/4 v0, 0x1

    .line 502
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "persist.datashaping.enable is true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 517
    :cond_4
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get0(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 518
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get1(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get0(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 520
    :cond_5
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get7(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 521
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get7(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 523
    :cond_6
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get5(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/datashaping/DataShapingUtils;->reset()V

    .line 524
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-wrap2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V

    .line 525
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "data shaping disabled, stop handler thread and reset!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
