.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = false

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mWapPushManagerPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 99
    const-string/jumbo v2, "deviceidle"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 98
    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 102
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    .line 96
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string/jumbo v2, "WAP PUSH"

    const-string/jumbo v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const-wide/16 v10, -0x1

    .line 468
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_1

    .line 469
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 477
    .local v9, "messageId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 481
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 482
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 483
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "thread_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 484
    const-string/jumbo v4, "m_id=? AND m_type=?"

    .line 485
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 486
    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 487
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 489
    const/4 v6, 0x0

    move-object v0, p0

    .line 479
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 490
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 496
    if-eqz v7, :cond_0

    .line 497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_0
    return-wide v0

    .line 470
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_2

    .line 471
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v9    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 473
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string/jumbo v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WAP Push data is neither delivery or read report type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 474
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-wide v10

    .line 496
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 500
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    return-wide v10

    .line 493
    :catch_0
    move-exception v8

    .line 494
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "Failed to query delivery or read report thread id"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    if-eqz v7, :cond_4

    .line 497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 495
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 496
    if-eqz v7, :cond_5

    .line 497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_5
    throw v0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 507
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v10

    .line 508
    .local v10, "rawLocation":[B
    if-eqz v10, :cond_2

    .line 509
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 510
    .local v9, "location":Ljava/lang/String;
    new-array v11, v13, [Ljava/lang/String;

    aput-object v9, v11, v12

    .line 511
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 515
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 516
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 517
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 518
    const-string/jumbo v4, "m_type=? AND ct_l =?"

    .line 519
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 520
    const/16 v0, 0x82

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 521
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 523
    const/4 v6, 0x0

    move-object v0, p0

    .line 513
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 524
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 531
    if-eqz v7, :cond_0

    .line 532
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_0
    return v13

    .line 531
    :cond_1
    if-eqz v7, :cond_2

    .line 532
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 536
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_0
    return v12

    .line 528
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 529
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "failed to query existing notification ind"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    if-eqz v7, :cond_2

    .line 532
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 530
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 531
    if-eqz v7, :cond_3

    .line 532
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_3
    throw v0
.end method

.method private lenovoSecurityCheckMMSPushIntent(Landroid/content/Intent;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 560
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const-string/jumbo v0, "com.lenovo.security.intent.action.MESSAGE_CHECK_WAP_PUSH_DELIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    iget-object v0, p2, Lcom/android/internal/telephony/InboundSmsHandler;->SECURITY_SMS_INTERCEPTION_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 563
    const-string/jumbo v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LSC WAP Push Intercept: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "com.lenovo.security.intent.action.MESSAGE_CHECK_WAP_PUSH_DELIVER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    return-void
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 368
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    .line 371
    const-string/jumbo v1, "supportMmsContentDisposition"

    const/4 v2, 0x1

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private writeInboxMessage(I[B)V
    .locals 24
    .param p1, "subId"    # I
    .param p2, "pushData"    # [B

    .prologue
    .line 376
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v5

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v5}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 377
    .local v3, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_0

    .line 378
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v5, "Invalid PUSH PDU"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 381
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v23

    .line 383
    .local v23, "type":I
    sparse-switch v23, :sswitch_data_0

    .line 453
    :try_start_0
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v5, "Received unrecognized WAP Push PDU."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 386
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    move-result-wide v20

    .line 387
    .local v20, "threadId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    .line 390
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v5, "Failed to find delivery or read report\'s thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 455
    .end local v20    # "threadId":J
    :catch_0
    move-exception v17

    .line 456
    .local v17, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to save MMS WAP push data: type="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 395
    .end local v17    # "e":Lcom/google/android/mms/MmsException;
    .restart local v20    # "threadId":J
    :cond_2
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 396
    const/4 v5, 0x1

    .line 397
    const/4 v6, 0x1

    .line 398
    const/4 v7, 0x0

    .line 393
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 399
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 400
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v5, "Failed to persist delivery or read report"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 457
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v20    # "threadId":J
    :catch_1
    move-exception v18

    .line 458
    .local v18, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v5, "Unexpected RuntimeException in persisting MMS WAP push data"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 404
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v20    # "threadId":J
    :cond_3
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 405
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "thread_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 411
    const/4 v8, 0x0

    .line 412
    const/4 v9, 0x0

    .line 406
    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 412
    const/4 v5, 0x1

    .line 406
    if-eq v4, v5, :cond_1

    .line 413
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v5, "Failed to update delivery or read report thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v20    # "threadId":J
    :sswitch_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v19, v0

    .line 420
    .local v19, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v14

    .line 422
    .local v14, "configs":Landroid/os/Bundle;
    if-eqz v14, :cond_4

    .line 423
    const-string/jumbo v4, "enabledTransID"

    const/4 v5, 0x0

    .line 422
    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 424
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v15

    .line 425
    .local v15, "contentLocation":[B
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v15, v4

    const/16 v5, 0x3d

    if-ne v5, v4, :cond_4

    .line 426
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v22

    .line 427
    .local v22, "transactionId":[B
    array-length v4, v15

    .line 428
    move-object/from16 v0, v22

    array-length v5, v0

    .line 427
    add-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 430
    .local v16, "contentLocationWithId":[B
    array-length v4, v15

    .line 429
    const/4 v5, 0x0

    .line 430
    const/4 v8, 0x0

    .line 429
    move-object/from16 v0, v16

    invoke-static {v15, v5, v0, v8, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 432
    array-length v4, v15

    move-object/from16 v0, v22

    array-length v5, v0

    .line 431
    const/4 v8, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v8, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 433
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 436
    .end local v15    # "contentLocation":[B
    .end local v16    # "contentLocationWithId":[B
    .end local v22    # "transactionId":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 439
    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 440
    const/4 v11, 0x1

    .line 441
    const/4 v12, 0x1

    .line 442
    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    .line 437
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 443
    .restart local v6    # "uri":Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 444
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v5, "Failed to save MMS WAP push notification ind"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 447
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 448
    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 447
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 40
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 134
    const/4 v4, 0x0

    .line 135
    const/16 v24, 0x1

    .local v24, "index":I
    :try_start_0
    aget-byte v4, p1, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v4, 0xff

    move/from16 v35, v0

    .line 136
    .local v35, "transactionId":I
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "index":I
    .local v25, "index":I
    :try_start_1
    aget-byte v4, p1, v24

    and-int/lit16 v0, v4, 0xff

    move/from16 v29, v0

    .line 139
    .local v29, "pduType":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v30

    .line 141
    .local v30, "phoneId":I
    const/4 v4, 0x6

    move/from16 v0, v29

    if-eq v0, v4, :cond_0

    .line 142
    const/4 v4, 0x7

    move/from16 v0, v29

    if-eq v0, v4, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 144
    const v9, 0x10e008a

    .line 143
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    .line 145
    .end local v25    # "index":I
    .restart local v24    # "index":I
    const/4 v4, -0x1

    move/from16 v0, v24

    if-eq v0, v4, :cond_2

    .line 146
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "index":I
    .restart local v25    # "index":I
    aget-byte v4, p1, v24
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    and-int/lit16 v0, v4, 0xff

    move/from16 v35, v0

    .line 147
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "index":I
    .restart local v24    # "index":I
    :try_start_2
    aget-byte v4, p1, v25

    and-int/lit16 v0, v4, 0xff

    move/from16 v29, v0

    .line 153
    const/4 v4, 0x6

    move/from16 v0, v29

    if-eq v0, v4, :cond_1

    .line 154
    const/4 v4, 0x7

    move/from16 v0, v29

    if-eq v0, v4, :cond_1

    .line 156
    const/4 v4, 0x1

    return v4

    .end local v24    # "index":I
    .restart local v25    # "index":I
    :cond_0
    move/from16 v24, v25

    .line 164
    .end local v25    # "index":I
    .restart local v24    # "index":I
    :cond_1
    new-instance v28, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 172
    .local v28, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 174
    const/4 v4, 0x2

    return v4

    .line 160
    .end local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 176
    .restart local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    :cond_3
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v22, v0

    .line 177
    .local v22, "headerLength":I
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v24, v24, v4

    .line 179
    move/from16 v23, v24

    .line 193
    .local v23, "headerStartIndex":I
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 195
    const/4 v4, 0x2

    return v4

    .line 198
    :cond_4
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    .line 199
    .local v27, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v12

    .line 200
    .local v12, "binaryContentType":J
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v24, v24, v4

    .line 202
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 203
    .local v21, "header":[B
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 205
    sub-int v4, v22, v24

    add-int v4, v4, v23

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeHeaders(II)V

    .line 210
    if-eqz v27, :cond_8

    const-string/jumbo v4, "application/vnd.wap.coc"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 211
    move-object/from16 v26, p1

    .line 218
    .local v26, "intentData":[B
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 220
    invoke-static/range {v30 .. v30}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v34

    .line 223
    .local v34, "subIds":[I
    if-eqz v34, :cond_9

    move-object/from16 v0, v34

    array-length v4, v0

    if-lez v4, :cond_9

    const/4 v4, 0x0

    aget v33, v34, v4

    .line 225
    .local v33, "subId":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(I[B)V

    .line 234
    .end local v33    # "subId":I
    .end local v34    # "subIds":[I
    :cond_5
    add-int v4, v24, v22

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 235
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v24, v0

    .line 236
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 237
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v36

    .line 238
    .local v36, "wapAppId":Ljava/lang/String;
    if-nez v36, :cond_6

    .line 239
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    .line 242
    :cond_6
    if-nez v27, :cond_a

    .line 243
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    .line 247
    .local v16, "contentType":Ljava/lang/String;
    :goto_2
    const/16 v32, 0x1

    .line 248
    .local v32, "processFurther":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v37, v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 250
    .local v37, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v37, :cond_b

    .line 283
    :cond_7
    :goto_3
    if-nez v32, :cond_d

    .line 284
    const/4 v4, 0x1

    return v4

    .line 213
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v26    # "intentData":[B
    .end local v32    # "processFurther":Z
    .end local v36    # "wapAppId":Ljava/lang/String;
    .end local v37    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_8
    add-int v17, v23, v22

    .line 214
    .local v17, "dataIndex":I
    :try_start_4
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v17

    new-array v0, v4, [B

    move-object/from16 v26, v0

    .line 215
    .restart local v26    # "intentData":[B
    move-object/from16 v0, v26

    array-length v4, v0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 359
    .end local v12    # "binaryContentType":J
    .end local v17    # "dataIndex":I
    .end local v21    # "header":[B
    .end local v22    # "headerLength":I
    .end local v23    # "headerStartIndex":I
    .end local v26    # "intentData":[B
    .end local v27    # "mimeType":Ljava/lang/String;
    .end local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v29    # "pduType":I
    .end local v30    # "phoneId":I
    .end local v35    # "transactionId":I
    :catch_0
    move-exception v11

    .line 362
    .local v11, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    const-string/jumbo v4, "WAP PUSH"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v4, 0x2

    return v4

    .line 224
    .end local v11    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v12    # "binaryContentType":J
    .restart local v21    # "header":[B
    .restart local v22    # "headerLength":I
    .restart local v23    # "headerStartIndex":I
    .restart local v26    # "intentData":[B
    .restart local v27    # "mimeType":Ljava/lang/String;
    .restart local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v29    # "pduType":I
    .restart local v30    # "phoneId":I
    .restart local v34    # "subIds":[I
    .restart local v35    # "transactionId":I
    :cond_9
    :try_start_5
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v33

    .restart local v33    # "subId":I
    goto/16 :goto_1

    .line 243
    .end local v33    # "subId":I
    .end local v34    # "subIds":[I
    .restart local v36    # "wapAppId":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v27

    .restart local v16    # "contentType":Ljava/lang/String;
    goto :goto_2

    .line 253
    .restart local v32    # "processFurther":Z
    .restart local v37    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_b
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 254
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    const-string/jumbo v10, "mms-mgr"

    const/16 v38, 0x0

    .line 253
    move/from16 v0, v38

    invoke-interface {v4, v9, v0, v10}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    .line 256
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "transactionId"

    move/from16 v0, v35

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string/jumbo v4, "pduType"

    move/from16 v0, v29

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string/jumbo v4, "header"

    move-object/from16 v0, v21

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 260
    const-string/jumbo v4, "data"

    move-object/from16 v0, v26

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 261
    const-string/jumbo v4, "contentTypeParameters"

    .line 262
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v9

    .line 261
    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 263
    move/from16 v0, v30

    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 265
    const-string/jumbo v4, "wspHeaders"

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    if-eqz v4, :cond_c

    .line 268
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v9, "put addr info into intent 1"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string/jumbo v4, "address"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 270
    const-string/jumbo v10, "address"

    .line 269
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string/jumbo v4, "service_center"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 272
    const-string/jumbo v10, "service_center"

    .line 271
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :cond_c
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v31

    .line 278
    .local v31, "procRet":I
    and-int/lit8 v4, v31, 0x1

    if-lez v4, :cond_7

    .line 279
    const v4, 0x8000

    and-int v4, v4, v31

    if-nez v4, :cond_7

    .line 280
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 286
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v31    # "procRet":I
    .end local v37    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v20

    .line 292
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v32    # "processFurther":Z
    .end local v36    # "wapAppId":Ljava/lang/String;
    :cond_d
    if-nez v27, :cond_e

    .line 294
    const/4 v4, 0x2

    return v4

    .line 300
    :cond_e
    :try_start_7
    const-string/jumbo v4, "application/vnd.wap.mms-message"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 302
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v9, "WapPush set permission for RECEIVE_MMS"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string/jumbo v6, "android.permission.RECEIVE_MMS"

    .line 305
    .local v6, "permission":Ljava/lang/String;
    const/16 v7, 0x12

    .line 314
    .local v7, "appOp":I
    :goto_5
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string/jumbo v4, "transactionId"

    move/from16 v0, v35

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const-string/jumbo v4, "pduType"

    move/from16 v0, v29

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    const-string/jumbo v4, "header"

    move-object/from16 v0, v21

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 319
    const-string/jumbo v4, "data"

    move-object/from16 v0, v26

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 320
    const-string/jumbo v4, "contentTypeParameters"

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    move/from16 v0, v30

    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 323
    const-string/jumbo v4, "wspHeaders"

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 326
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v9, "put addr info into intent 2"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string/jumbo v4, "address"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    const-string/jumbo v10, "address"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string/jumbo v4, "service_center"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 329
    const-string/jumbo v10, "service_center"

    .line 328
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v4, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v15

    .line 336
    .local v15, "componentName":Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 337
    .local v8, "options":Landroid/os/Bundle;
    if-eqz v15, :cond_10

    .line 339
    invoke-virtual {v5, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 343
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 344
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mms-app"

    const/16 v38, 0x0

    .line 343
    move/from16 v0, v38

    invoke-interface {v4, v9, v0, v10}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v18

    .line 345
    .local v18, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v14

    .line 346
    .local v14, "bopts":Landroid/app/BroadcastOptions;
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 347
    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v8

    .line 353
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v14    # "bopts":Landroid/app/BroadcastOptions;
    .end local v18    # "duration":J
    :cond_10
    :goto_6
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/internal/telephony/WapPushOverSms;->lenovoSecurityCheckMMSPushIntent(Landroid/content/Intent;Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 357
    sget-object v10, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v4, p3

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 358
    const/4 v4, -0x1

    return v4

    .line 308
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "appOp":I
    .end local v15    # "componentName":Landroid/content/ComponentName;
    :cond_11
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v9, "WapPush set permission for RECEIVE_WAP_PUSH"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string/jumbo v6, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    .line 311
    .restart local v6    # "permission":Ljava/lang/String;
    const/16 v7, 0x13

    .restart local v7    # "appOp":I
    goto/16 :goto_5

    .line 359
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "appOp":I
    .end local v12    # "binaryContentType":J
    .end local v21    # "header":[B
    .end local v22    # "headerLength":I
    .end local v23    # "headerStartIndex":I
    .end local v24    # "index":I
    .end local v26    # "intentData":[B
    .end local v27    # "mimeType":Ljava/lang/String;
    .end local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v29    # "pduType":I
    .end local v30    # "phoneId":I
    .restart local v25    # "index":I
    :catch_2
    move-exception v11

    .restart local v11    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    move/from16 v24, v25

    .end local v25    # "index":I
    .restart local v24    # "index":I
    goto/16 :goto_4

    .line 348
    .end local v11    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "permission":Ljava/lang/String;
    .restart local v7    # "appOp":I
    .restart local v8    # "options":Landroid/os/Bundle;
    .restart local v12    # "binaryContentType":J
    .restart local v15    # "componentName":Landroid/content/ComponentName;
    .restart local v21    # "header":[B
    .restart local v22    # "headerLength":I
    .restart local v23    # "headerStartIndex":I
    .restart local v26    # "intentData":[B
    .restart local v27    # "mimeType":Ljava/lang/String;
    .restart local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v29    # "pduType":I
    .restart local v30    # "phoneId":I
    :catch_3
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    goto :goto_6
.end method

.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 552
    iput-object p4, p0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 553
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v0

    return v0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 111
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 86
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 85
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 91
    return-void
.end method
