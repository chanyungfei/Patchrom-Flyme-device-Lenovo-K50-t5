.class final Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandGloveSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 8389
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 8390
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8389
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 8396
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "glove_mode_alert_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 8397
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 8398
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "sys/board_properties/tpd_glove_status"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->writeSysFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 8394
    :goto_1
    return-void

    .line 8396
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 8400
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "sys/board_properties/tpd_glove_status"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->writeSysFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
