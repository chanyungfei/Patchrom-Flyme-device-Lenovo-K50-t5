.class Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1408
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 1410
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 1411
    return-void

    .line 1410
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1515
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v3, p0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1516
    :cond_0
    const-string v3, "sim_lock"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    :cond_1
    const-string v3, "credential_storage_type"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    const-string v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1521
    .local v2, "um":Landroid/os/UserManager;
    const-string v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1522
    const-string v3, "credentials_management"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    :cond_2
    const-string v3, "manage_notification_access"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1459
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1462
    .local v2, "res":Landroid/content/res/Resources;
    const v8, 0x7f0c0196

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1464
    .local v5, "screenTitle":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1465
    .local v0, "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    iput-object v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1466
    iput-object v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1467
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    iget-boolean v8, p0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v8, :cond_0

    .line 1470
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_2

    const v3, 0x7f0c054e

    .line 1473
    .local v3, "resId":I
    :goto_0
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1474
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1475
    iput-object v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1476
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    .end local v3    # "resId":I
    :cond_0
    const-string v8, "user"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 1482
    .local v7, "um":Landroid/os/UserManager;
    const-string v8, "no_config_credentials"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1483
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1485
    .local v1, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v8

    if-eqz v8, :cond_3

    const v6, 0x7f0c0a3b

    .line 1489
    .local v6, "storageSummaryRes":I
    :goto_1
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1490
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1491
    iput-object v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1492
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    .end local v1    # "keyStore":Landroid/security/KeyStore;
    .end local v6    # "storageSummaryRes":I
    :cond_1
    return-object v4

    .line 1470
    .end local v7    # "um":Landroid/os/UserManager;
    :cond_2
    const v3, 0x7f0c054c

    goto :goto_0

    .line 1485
    .restart local v1    # "keyStore":Landroid/security/KeyStore;
    .restart local v7    # "um":Landroid/os/UserManager;
    :cond_3
    const v6, 0x7f0c0a3c

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableResource;>;"
    const/4 v0, 0x0

    .line 1429
    .local v0, "resId":I
    iget-boolean v3, p0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v3, :cond_0

    .line 1444
    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1445
    .local v2, "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v3, 0x7f060037

    iput v3, v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 1446
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    .end local v2    # "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    :cond_0
    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1451
    .restart local v2    # "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v3, 0x7f060032

    iput v3, v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 1452
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1454
    return-object v1
.end method