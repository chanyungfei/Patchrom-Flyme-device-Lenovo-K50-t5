.class public Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "LteDcPhoneProxy.java"


# static fields
.field private static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCsPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPsPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

.field protected mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field protected mSvlteIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

.field protected mSvlteRatController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

.field protected mSvlteSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 3
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "nltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "radioTechMode"    # I

    .prologue
    .line 106
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 107
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 108
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 113
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 114
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    .line 115
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteRatController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .line 116
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LteDcPhoneProxy: mLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 105
    return-void

    :cond_0
    move-object v0, p1

    .line 106
    goto :goto_0
.end method

.method private getPreferredApnIdForSub(I)I
    .locals 9
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 542
    const/4 v6, -0x1

    .line 543
    .local v6, "apnId":I
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, "subIdString":Ljava/lang/String;
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 545
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 546
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v5

    const-string/jumbo v4, "name"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "apn"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 547
    const-string/jumbo v5, "name ASC"

    move-object v4, v3

    .line 545
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 548
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 549
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 550
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 552
    :cond_0
    if-eqz v7, :cond_1

    .line 553
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreferredApnIdForSub: subId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",apnId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 556
    return v6
.end method

.method private putIdsExtra(Landroid/content/Intent;II)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "newPhoneId"    # I
    .param p3, "oldPhoneId"    # I

    .prologue
    const/4 v8, 0x0

    .line 602
    const/4 v6, 0x2

    new-array v2, v6, [I

    aput p2, v2, v8

    const/4 v6, 0x1

    aput p3, v2, v6

    .line 603
    .local v2, "phoneIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_5

    .line 604
    aget v1, v2, v0

    .line 605
    .local v1, "phoneId":I
    const/4 v4, -0x1

    .line 606
    .local v4, "subId":I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v3

    .line 607
    .local v3, "slotId":I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 608
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcSubId(I)I

    move-result v4

    .line 615
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 616
    if-nez v0, :cond_2

    .line 617
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->putNewIdsExtra(Landroid/content/Intent;III)V

    .line 603
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 611
    .local v5, "subIds":[I
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 612
    aget v4, v5, v8

    goto :goto_1

    .line 619
    .end local v5    # "subIds":[I
    :cond_2
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->putOldIdsExtra(Landroid/content/Intent;III)V

    goto :goto_2

    .line 622
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putIdsExtra: no valid sub id found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 623
    if-nez v0, :cond_4

    const-string/jumbo v6, "newphone"

    .line 622
    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 623
    :cond_4
    const-string/jumbo v6, "oldphone"

    goto :goto_3

    .line 601
    .end local v1    # "phoneId":I
    .end local v3    # "slotId":I
    .end local v4    # "subId":I
    :cond_5
    return-void
.end method

.method private putNewIdsExtra(Landroid/content/Intent;III)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putNewIdsExtra: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 630
    const-string/jumbo v0, "subscription"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    const-string/jumbo v0, "slot"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    return-void
.end method

.method private putOldIdsExtra(Landroid/content/Intent;III)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putOldIdsExtra: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 637
    const-string/jumbo v0, "oldsubscription"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string/jumbo v0, "oldphone"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    const-string/jumbo v0, "oldslot"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    return-void
.end method

.method private setpreferredApnForSub(II)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "apnId"    # I

    .prologue
    const/4 v6, 0x0

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setpreferredApnForSub: subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",apnId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 561
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "subIdString":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 563
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 566
    if-ltz p2, :cond_0

    .line 567
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 568
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "apn_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 559
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private updatePhoneIds(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "oldPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "newPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 379
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 380
    .local v1, "oldPhoneId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 381
    .local v0, "newPhoneId":I
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->setPhoneId(I)V

    .line 382
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->setPhoneId(I)V

    .line 384
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v2, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePreferApnForSubIdChanged(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 377
    return-void
.end method

.method private updatePreferApnForSubIdChanged(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "activePhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "oldPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 531
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 532
    .local v1, "activeSubId":I
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 533
    .local v3, "oldSubId":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPreferredApnIdForSub(I)I

    move-result v0

    .line 534
    .local v0, "activeApnId":I
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPreferredApnIdForSub(I)I

    move-result v2

    .line 535
    .local v2, "oldApnId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePreferApnForSubIdChanged: activeSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",oldSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    const-string/jumbo v5, ",activeApnId = "

    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    const-string/jumbo v5, ",oldApnId = "

    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 537
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->setpreferredApnForSub(II)V

    .line 538
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->setpreferredApnForSub(II)V

    .line 530
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 122
    :cond_1
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    return-object v0
.end method

.method public getCsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataCallList(Landroid/os/Message;)V

    .line 388
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method protected getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const-string/jumbo v0, "IRAT_LteDcPhoneProxy"

    return-object v0
.end method

.method public getLtePhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getNLtePhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getPhoneById(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0

    .line 299
    :cond_1
    const-string/jumbo v0, "getPhoneById should come here"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getRadioAccessFamily()I

    move-result v0

    return v0
.end method

.method public getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    return-object v0
.end method

.method public getSharedDcTracker()Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method public getSvlteIrController()Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    return-object v0
.end method

.method public getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteRatController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    return-object v0
.end method

.method public getSvlteSstProxy()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 415
    const-string/jumbo v1, "default"

    .line 414
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 487
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 503
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 519
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 495
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 511
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 592
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeReferences: mLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 132
    :cond_1
    return-void
.end method

.method public setCsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "csPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 179
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 409
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDataEnabled(Z)V

    .line 408
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDataRoamingEnabled(Z)V

    .line 398
    return-void
.end method

.method public setLtePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 203
    return-void
.end method

.method public setNLtePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "nltePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 211
    return-void
.end method

.method public setPsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 171
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 2
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 575
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 576
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    .line 579
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    .line 574
    return-void
.end method

.method public setRadioPower(ZI)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRadioPower phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 281
    :cond_0
    return-void
.end method

.method protected switchActivePhone(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v6, 0x1

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchActivePhone targetPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", oldPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 338
    .local v2, "oldPhone":Lcom/android/internal/telephony/Phone;
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 342
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 344
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v2, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePhoneIds(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 347
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 349
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 350
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 351
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 352
    const/16 v4, 0x10

    .line 350
    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 355
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccRefresh()V

    .line 358
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 359
    const/16 v3, 0x8

    .line 361
    .local v3, "oldSs":I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 362
    const/16 v1, 0xe

    .line 364
    .local v1, "newSs":I
    :goto_2
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhone(II)V

    .line 367
    new-instance v0, Landroid/content/Intent;

    .line 368
    const-string/jumbo v4, "android.intent.action.RADIO_TECHNOLOGY"

    .line 367
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 370
    const-string/jumbo v4, "phoneName"

    .line 371
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneId()I

    move-result v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->putIdsExtra(Landroid/content/Intent;II)V

    .line 373
    const/4 v4, 0x0

    .line 374
    const/4 v5, -0x1

    .line 373
    invoke-static {v0, v4, v5}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 334
    return-void

    .line 353
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "newSs":I
    .end local v3    # "oldSs":I
    :cond_0
    const/16 v4, 0x8

    goto :goto_0

    .line 360
    :cond_1
    const/16 v3, 0xe

    .restart local v3    # "oldSs":I
    goto :goto_1

    .line 363
    :cond_2
    const/16 v1, 0x8

    .restart local v1    # "newSs":I
    goto :goto_2
.end method

.method public toggleActivePhone(I)V
    .locals 4
    .param p1, "radioTech"    # I

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 312
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 313
    .local v1, "lteMode":Z
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 314
    const-string/jumbo v2, "toggleActivePhone to CSFB mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 315
    const/4 v1, 0x1

    .line 323
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    :cond_0
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 323
    if-eqz v2, :cond_4

    .line 325
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchActivePhone return without action, lteMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    const-string/jumbo v3, ", activePhone = "

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    const-string/jumbo v3, ", mLtePhone = "

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    const-string/jumbo v3, ", mNLtePhone = "

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 328
    return-void

    .line 316
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 317
    const-string/jumbo v2, "toggleActivePhone to SVLTE mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 318
    const/4 v1, 0x0

    goto :goto_0

    .line 320
    :cond_3
    const-string/jumbo v2, "toggleActivePhone return, Unknown mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 321
    return-void

    .line 330
    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    :goto_1
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->switchActivePhone(Lcom/android/internal/telephony/Phone;)V

    .line 310
    return-void

    .line 331
    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_1
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    .line 597
    return-void
.end method

.method public updatePsPhone(II)V
    .locals 2
    .param p1, "sourceRat"    # I
    .param p2, "targetRat"    # I

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePsPhone, sourceRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 232
    packed-switch p2, :pswitch_data_0

    .line 250
    :pswitch_0
    const-string/jumbo v0, "updatePsPhone, target rat is unknown, keep on."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 251
    return-void

    .line 234
    :pswitch_1
    const-string/jumbo v0, "updatePsPhone to ltePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    .line 228
    return-void

    .line 245
    :pswitch_2
    const-string/jumbo v0, "updatePsPhone to nltePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePsPhoneAndCi: psPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 264
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 265
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 262
    return-void
.end method
