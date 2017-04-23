.class public Lcom/mediatek/internal/telephony/DefaultSmsSimSettings;
.super Ljava/lang/Object;
.source "DefaultSmsSimSettings.java"


# static fields
.field public static final ASK_USER_SUB_ID:I = -0x2

.field private static final TAG:Ljava/lang/String; = "DefaultSmsSimSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isoldDefaultSMSSubIdActive(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v5, 0x1

    .line 62
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 64
    .local v0, "oldSmsDefaultSIM":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 65
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 66
    return v5

    .line 69
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const-string/jumbo v3, "OP01"

    const-string/jumbo v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    const/4 v3, -0x2

    if-eq v0, v3, :cond_2

    .line 71
    const/4 v3, -0x3

    if-ne v0, v3, :cond_3

    .line 72
    :cond_2
    return v5

    .line 75
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public static setSmsTalkDefaultSim(Ljava/util/List;Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 17
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 18
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v2

    .line 19
    .local v2, "oldSmsDefaultSIM":I
    const-string/jumbo v3, "DefaultSmsSimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oldSmsDefaultSIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    if-nez p0, :cond_1

    .line 22
    const-string/jumbo v3, "DefaultSmsSimSettings"

    const-string/jumbo v4, "subInfos == null, return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .end local v2    # "oldSmsDefaultSIM":I
    :cond_0
    :goto_0
    return-void

    .line 25
    .restart local v2    # "oldSmsDefaultSIM":I
    :cond_1
    const-string/jumbo v3, "DefaultSmsSimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subInfos size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_5

    .line 27
    invoke-static {p0}, Lcom/mediatek/internal/telephony/DefaultSmsSimSettings;->isoldDefaultSMSSubIdActive(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    const-string/jumbo v3, "DefaultSmsSimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subInfos size > 1 & old available, set to :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_2
    const-string/jumbo v3, "OP01"

    const-string/jumbo v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    const-string/jumbo v3, "DefaultSmsSimSettings"

    const-string/jumbo v4, "subInfos size > 1, set to : AUTO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 35
    const/4 v4, -0x3

    .line 34
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_0

    .line 36
    :cond_3
    const-string/jumbo v3, "OP09"

    const-string/jumbo v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 37
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 39
    .local v1, "firstSubId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 40
    const-string/jumbo v3, "DefaultSmsSimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subInfos size > 1, set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 42
    .end local v1    # "firstSubId":I
    :cond_4
    const-string/jumbo v3, "DefaultSmsSimSettings"

    const-string/jumbo v4, "subInfos size > 1, set to : ASK_USER_SUB_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 46
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 47
    const-string/jumbo v3, "OP09"

    const-string/jumbo v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 49
    .local v0, "defaultSubId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 50
    const-string/jumbo v3, "DefaultSmsSimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subInfos size = 1, set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 54
    .end local v0    # "defaultSubId":I
    :cond_6
    const-string/jumbo v3, "DefaultSmsSimSettings"

    const-string/jumbo v4, "setSmsTalkDefaultSim SIM not insert"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
