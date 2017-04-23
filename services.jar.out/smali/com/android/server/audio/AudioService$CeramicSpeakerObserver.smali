.class Lcom/android/server/audio/AudioService$CeramicSpeakerObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CeramicSpeakerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 4769
    iput-object p1, p0, Lcom/android/server/audio/AudioService$CeramicSpeakerObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 4770
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4771
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4772
    const-string/jumbo v1, "ceramics_state"

    .line 4771
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4772
    const/4 v2, 0x0

    .line 4771
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4769
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 4778
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$CeramicSpeakerObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4779
    const-string/jumbo v6, "ceramic_alert_warning"

    const/4 v7, 0x0

    .line 4778
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 4781
    .local v3, "hasAlert":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService$CeramicSpeakerObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "ceramics_state"

    const/4 v7, 0x0

    .line 4780
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4782
    .local v0, "ceramicSwitchStatus":I
    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ceramic switch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4783
    const-string/jumbo v7, " hasAlert="

    .line 4782
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4787
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    if-nez v3, :cond_0

    .line 4790
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 4791
    .local v4, "i":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.lenovo.settings.plugin.CeramicWarningDialog"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4792
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4793
    iget-object v5, p0, Lcom/android/server/audio/AudioService$CeramicSpeakerObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4776
    .end local v0    # "ceramicSwitchStatus":I
    .end local v3    # "hasAlert":I
    .end local v4    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 4794
    .restart local v0    # "ceramicSwitchStatus":I
    .restart local v3    # "hasAlert":I
    :catch_0
    move-exception v2

    .line 4795
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "AudioService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4798
    .end local v0    # "ceramicSwitchStatus":I
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v3    # "hasAlert":I
    :catch_1
    move-exception v1

    .line 4799
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "checkAlertWarning error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
