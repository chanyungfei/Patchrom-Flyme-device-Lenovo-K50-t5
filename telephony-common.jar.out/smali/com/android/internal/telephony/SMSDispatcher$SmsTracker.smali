.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SmsTracker"
.end annotation


# instance fields
.field private mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mAppInfo:Landroid/content/pm/PackageInfo;

.field public final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeliveryIntent:Landroid/app/PendingIntent;

.field public final mDestAddress:Ljava/lang/String;

.field public mExpectMore:Z

.field mFormat:Ljava/lang/String;

.field private mFullMessageText:Ljava/lang/String;

.field public mImsRetry:I

.field private mIsText:Z

.field public mMessageRef:I

.field public mMessageUri:Landroid/net/Uri;

.field public mPersistMessage:Z

.field private mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

.field public mRetryCount:I

.field public final mSentIntent:Landroid/app/PendingIntent;

.field public final mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

.field private mSubId:I

.field private mTimestamp:J

.field private mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZ)V
    .locals 4
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "appInfo"    # Landroid/content/pm/PackageInfo;
    .param p5, "destAddr"    # Ljava/lang/String;
    .param p6, "format"    # Ljava/lang/String;
    .param p7, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p9, "messageUri"    # Landroid/net/Uri;
    .param p10, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p11, "isExpectMore"    # Z
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "subId"    # I
    .param p14, "isText"    # Z
    .param p15, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .line 1581
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    .line 1574
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    .line 1586
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1587
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1588
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 1589
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1590
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    .line 1591
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1592
    iput-object p6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 1593
    iput-boolean p11, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 1594
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 1595
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 1596
    iput-object p7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1597
    iput-object p8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1598
    iput-object p9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    .line 1599
    iput-object p10, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1600
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    .line 1601
    move/from16 v0, p13

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    .line 1602
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    .line 1603
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    .line 1585
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "data"    # Ljava/util/HashMap;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "appInfo"    # Landroid/content/pm/PackageInfo;
    .param p5, "destAddr"    # Ljava/lang/String;
    .param p6, "format"    # Ljava/lang/String;
    .param p7, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p9, "messageUri"    # Landroid/net/Uri;
    .param p10, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p11, "isExpectMore"    # Z
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "subId"    # I
    .param p14, "isText"    # Z
    .param p15, "persistMessage"    # Z

    .prologue
    invoke-direct/range {p0 .. p15}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZ)V

    return-void
.end method

.method private persistOrUpdateMessage(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1722
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateMessageState(Landroid/content/Context;II)V

    .line 1720
    :goto_0
    return-void

    .line 1724
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 1665
    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    if-eqz v8, :cond_0

    .line 1666
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, p1}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1667
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFilterOutByPpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1665
    if-eqz v8, :cond_1

    .line 1668
    :cond_0
    const/4 v8, 0x0

    return-object v8

    .line 1671
    :cond_1
    const-string/jumbo v9, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Persist SMS into "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1672
    const/4 v8, 0x5

    if-ne p2, v8, :cond_6

    const-string/jumbo v8, "FAILED"

    .line 1671
    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1674
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "sub_id"

    iget v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1675
    const-string/jumbo v8, "address"

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string/jumbo v8, "body"

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string/jumbo v8, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1678
    const-string/jumbo v8, "seen"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1679
    const-string/jumbo v8, "read"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1680
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1681
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1682
    const-string/jumbo v8, "creator"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_3

    .line 1685
    const-string/jumbo v8, "status"

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1687
    :cond_3
    if-eqz p3, :cond_4

    .line 1688
    const-string/jumbo v8, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1690
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1691
    .local v2, "identity":J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1693
    .local v4, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v8, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1694
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_5

    const/4 v8, 0x5

    if-ne p2, v8, :cond_5

    .line 1700
    new-instance v5, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1701
    .local v5, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "type"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1702
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    .end local v5    # "updateValues":Landroid/content/ContentValues;
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1704
    return-object v6

    .line 1672
    .end local v2    # "identity":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_6
    const-string/jumbo v8, "SENT"

    goto/16 :goto_0

    .line 1680
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_7
    const/4 v0, 0x0

    .local v0, "creator":Ljava/lang/String;
    goto :goto_1

    .line 1705
    .end local v0    # "creator":Ljava/lang/String;
    .restart local v2    # "identity":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1706
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "SMSDispatcher"

    const-string/jumbo v9, "writeOutboxMessage: Failed to persist outbox message"

    invoke-static {v8, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1707
    const/4 v8, 0x0

    .line 1709
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1707
    return-object v8

    .line 1708
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1709
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1708
    throw v8
.end method

.method private updateMessageState(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1636
    return-void

    .line 1638
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1639
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1640
    const-string/jumbo v0, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1643
    .local v6, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    .line 1644
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 1643
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1644
    const/4 v1, 0x1

    .line 1643
    if-eq v0, v1, :cond_1

    .line 1645
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to move message to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1634
    return-void

    .line 1647
    :catchall_0
    move-exception v0

    .line 1648
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1647
    throw v0
.end method


# virtual methods
.method protected isFilterOutByPpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 1855
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    if-nez v2, :cond_0

    .line 1856
    new-instance v2, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    invoke-direct {v2, p1}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    .line 1860
    :cond_0
    const/4 v1, 0x0

    .line 1862
    .local v1, "pplResult":Z
    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1863
    const/4 v2, 0x0

    return v2

    .line 1867
    :cond_1
    const-string/jumbo v2, "SMSDispatcher"

    const-string/jumbo v3, "[Moms] Phone privacy check start"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1870
    .local v0, "pplData":Landroid/os/Bundle;
    const-string/jumbo v2, "msgContent"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string/jumbo v2, "dstAddr"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string/jumbo v2, "format"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string/jumbo v2, "subId"

    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1874
    const-string/jumbo v2, "smsType"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1876
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    invoke-interface {v2, v0}, Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;->pplFilter(Landroid/os/Bundle;)Z

    move-result v1

    .line 1878
    .local v1, "pplResult":Z
    const-string/jumbo v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Moms] Phone privacy check end, Need to filter(result) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return v1
.end method

.method isMultipart()Z
    .locals 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onFailed(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # I
    .param p3, "errorCode"    # I

    .prologue
    const/4 v7, 0x1

    .line 1736
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_0

    .line 1737
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1740
    :cond_0
    const/4 v2, 0x1

    .line 1741
    .local v2, "isSinglePartOrLastPart":Z
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v6, :cond_1

    .line 1742
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v6

    if-nez v6, :cond_a

    const/4 v2, 0x1

    .line 1744
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1745
    const/4 v6, 0x5

    invoke-direct {p0, p1, v6, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    .line 1747
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_9

    .line 1750
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1751
    .local v1, "fillIn":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v6, :cond_3

    .line 1753
    const-string/jumbo v6, "uri"

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1755
    :cond_3
    if-eqz p3, :cond_4

    .line 1756
    const-string/jumbo v6, "errorCode"

    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1758
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    .line 1760
    const-string/jumbo v6, "SendNextMsg"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1763
    :cond_5
    const/4 v5, 0x0

    .line 1764
    .local v5, "szPdu":I
    const/4 v4, 0x0

    .line 1765
    .local v4, "smscLength":I
    const/4 v3, 0x0

    .line 1766
    .local v3, "pduLength":I
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    if-eqz v6, :cond_8

    .line 1767
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v7, "smsc"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1768
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v7, "smsc"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v4, v6

    .line 1770
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v7, "pdu"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1771
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v7, "pdu"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v3, v6

    .line 1773
    :cond_7
    add-int v5, v4, v3

    .line 1775
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1777
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1, p2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "pduLength":I
    .end local v4    # "smscLength":I
    .end local v5    # "szPdu":I
    :cond_9
    :goto_1
    return-void

    .line 1742
    :cond_a
    const/4 v2, 0x0

    goto :goto_0

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Failed to send result"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSent(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 1791
    const/4 v2, 0x1

    .line 1792
    .local v2, "isSinglePartOrLastPart":Z
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v7, :cond_0

    .line 1793
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_9

    const/4 v2, 0x1

    .line 1795
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 1796
    const/4 v3, 0x2

    .line 1797
    .local v3, "messageType":I
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1798
    const/4 v3, 0x5

    .line 1800
    :cond_1
    invoke-direct {p0, p1, v3, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    .line 1802
    .end local v3    # "messageType":I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_8

    .line 1805
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1806
    .local v1, "fillIn":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v7, :cond_3

    .line 1808
    const-string/jumbo v7, "uri"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1810
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 1812
    const-string/jumbo v7, "SendNextMsg"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1815
    :cond_4
    const/4 v6, 0x0

    .line 1816
    .local v6, "szPdu":I
    const/4 v5, 0x0

    .line 1817
    .local v5, "smscLength":I
    const/4 v4, 0x0

    .line 1818
    .local v4, "pduLength":I
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    if-eqz v7, :cond_7

    .line 1819
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v8, "smsc"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1820
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v8, "smsc"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v5, v7

    .line 1822
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v8, "pdu"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1823
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v8, "pdu"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v4, v7

    .line 1825
    :cond_6
    add-int v6, v5, v4

    .line 1827
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1828
    sget-object v7, Lcom/android/internal/telephony/SMSDispatcher;->MSG_REF_NUM:Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1829
    const-string/jumbo v7, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "message reference number : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v8, -0x1

    invoke-virtual {v7, p1, v8, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v4    # "pduLength":I
    .end local v5    # "smscLength":I
    .end local v6    # "szPdu":I
    :cond_8
    :goto_1
    return-void

    .line 1793
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1832
    :catch_0
    move-exception v0

    .line 1833
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v7, "SMSDispatcher"

    const-string/jumbo v8, "Failed to send result"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateSentMessageStatus(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1620
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1621
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1622
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1623
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v4

    .line 1622
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1617
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
