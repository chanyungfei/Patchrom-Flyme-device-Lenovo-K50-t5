.class Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MAX_RADIO_ON_TIME:J = 0x2bf20L


# instance fields
.field final synthetic this$1:Lcom/mediatek/ipomanager/ActivityManagerPlus$1;

.field final synthetic val$stMgr:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlus$1;Lcom/android/internal/app/ShutdownManager;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;->this$1:Lcom/mediatek/ipomanager/ActivityManagerPlus$1;

    iput-object p2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;->val$stMgr:Lcom/android/internal/app/ShutdownManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x2bf20

    const-wide/16 v10, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "ro.mtk_dt_support"

    .line 267
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    const-wide/16 v4, 0x0

    :cond_1
    const-string/jumbo v3, "ril.ipo.radiooff"

    const-string/jumbo v6, "1"

    .line 278
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "ril.ipo.radiooff.2"

    const-string/jumbo v7, "1"

    .line 279
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ActivityManagerPlus"

    .line 281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DualTalkMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " radiooff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " radiooff2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-eqz v0, :cond_6

    :cond_2
    if-nez v0, :cond_8

    :cond_3
    :goto_1
    const-wide/16 v6, 0x64

    .line 294
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    const-string/jumbo v3, "ActivityManagerPlus"

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " wait radio on for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    mul-long v8, v10, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_2
    mul-long v6, v10, v4

    cmp-long v3, v6, v12

    if-gez v3, :cond_9

    move v3, v2

    :goto_3
    if-nez v3, :cond_1

    .line 301
    :goto_4
    mul-long/2addr v4, v10

    cmp-long v0, v4, v12

    if-gez v0, :cond_a

    :goto_5
    if-nez v2, :cond_4

    const-string/jumbo v0, "ActivityManagerPlus"

    const-string/jumbo v1, "timeout to wait radio on"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;->val$stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;->this$1:Lcom/mediatek/ipomanager/ActivityManagerPlus$1;

    iget-object v1, v1, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$000(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->prebootKillProcess(Landroid/content/Context;)V

    .line 306
    return-void

    :cond_5
    const-string/jumbo v0, "ro.mtk_svlte_support"

    .line 267
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v7, "0"

    .line 286
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_7
    const-string/jumbo v0, "ActivityManagerPlus"

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "radio on for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-long v6, v10, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string/jumbo v7, "0"

    .line 286
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_1

    :cond_9
    move v3, v1

    .line 299
    goto :goto_3

    :cond_a
    move v2, v1

    .line 301
    goto :goto_5

    .line 297
    :catch_0
    move-exception v3

    goto :goto_2
.end method
