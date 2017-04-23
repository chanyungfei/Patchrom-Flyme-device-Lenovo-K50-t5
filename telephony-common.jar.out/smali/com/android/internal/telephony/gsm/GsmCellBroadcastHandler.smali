.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;,
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;
    }
.end annotation


# static fields
.field private static final INTENT_ETWS_ALARM:Ljava/lang/String; = "com.android.internal.telephony.etws"

.field private static final VDBG:Z


# instance fields
.field private mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

.field private mEtwsAlarmIntent:Landroid/app/PendingIntent;

.field private final mEtwsPrimaryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    .line 77
    const-string/jumbo v1, "GsmCellBroadcastHandler"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 66
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 65
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 70
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 73
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    .line 403
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;-><init>(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsPrimaryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnEtwsNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    new-instance v1, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    invoke-direct {v1, p2}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.internal.telephony.etws"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsPrimaryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method private handleEtwsPdu([BLjava/lang/String;)Landroid/telephony/SmsCbMessage;
    .locals 10
    .param p1, "pdu"    # [B
    .param p2, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 347
    if-eqz p1, :cond_0

    array-length v6, p1

    const/16 v7, 0x38

    if-eq v6, v7, :cond_1

    .line 348
    :cond_0
    const-string/jumbo v6, "invalid ETWS PDU"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 349
    return-object v9

    .line 352
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v2, p1, v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([BZ)V

    .line 353
    .local v2, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 354
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 355
    .local v3, "lac":I
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 358
    .local v1, "cid":I
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 370
    :pswitch_0
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, p2}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 374
    .local v4, "location":Landroid/telephony/SmsCbLocation;
    :goto_0
    new-array v5, v8, [[B

    .line 375
    .local v5, "pdus":[[B
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 377
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v6

    return-object v6

    .line 360
    .end local v4    # "location":Landroid/telephony/SmsCbLocation;
    .end local v5    # "pdus":[[B
    :pswitch_1
    new-instance v4, Landroid/telephony/SmsCbLocation;

    const/4 v6, -0x1

    invoke-direct {v4, p2, v3, v6}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 361
    .restart local v4    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 365
    .end local v4    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, p2, v3, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 366
    .restart local v4    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;
    .locals 19
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 135
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [B

    .line 153
    .local v16, "receivedPdu":[B
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([BZ)V

    .line 155
    .local v7, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v18

    .line 155
    invoke-virtual/range {v17 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v15

    .line 157
    .local v15, "plmn":Ljava/lang/String;
    const/4 v10, -0x1

    .line 158
    .local v10, "lac":I
    const/4 v3, -0x1

    .line 159
    .local v3, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 163
    .local v4, "cl":Landroid/telephony/CellLocation;
    instance-of v0, v4, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 164
    move-object v0, v4

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v2, v0

    .line 165
    .local v2, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    .line 166
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 170
    .end local v2    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 182
    :pswitch_0
    new-instance v11, Landroid/telephony/SmsCbLocation;

    invoke-direct {v11, v15}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 187
    .local v11, "location":Landroid/telephony/SmsCbLocation;
    :goto_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v12

    .line 188
    .local v12, "pageCount":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v12, v0, :cond_5

    .line 190
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    invoke-direct {v5, v7, v11}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 193
    .local v5, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[B

    .line 195
    .local v14, "pdus":[[B
    if-nez v14, :cond_1

    .line 198
    new-array v14, v12, [[B

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    aput-object v16, v14, v17

    .line 206
    const/16 v17, 0x0

    array-length v0, v14

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v13, v14, v17

    .line 207
    .local v13, "pdu":[B
    if-nez v13, :cond_2

    .line 209
    const/16 v17, 0x0

    return-object v17

    .line 172
    .end local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v11    # "location":Landroid/telephony/SmsCbLocation;
    .end local v12    # "pageCount":I
    .end local v13    # "pdu":[B
    .end local v14    # "pdus":[[B
    :pswitch_1
    new-instance v11, Landroid/telephony/SmsCbLocation;

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-direct {v11, v15, v10, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 173
    .restart local v11    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 177
    .end local v11    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v11, Landroid/telephony/SmsCbLocation;

    invoke-direct {v11, v15, v10, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 178
    .restart local v11    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 206
    .restart local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .restart local v12    # "pageCount":I
    .restart local v13    # "pdu":[B
    .restart local v14    # "pdus":[[B
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 214
    .end local v13    # "pdu":[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 226
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 227
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 229
    .local v8, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    invoke-virtual {v8, v15, v10, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v17

    if-nez v17, :cond_4

    .line 230
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 246
    .end local v3    # "cid":I
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    .end local v7    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v8    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    .end local v10    # "lac":I
    .end local v11    # "location":Landroid/telephony/SmsCbLocation;
    .end local v12    # "pageCount":I
    .end local v14    # "pdus":[[B
    .end local v15    # "plmn":Ljava/lang/String;
    .end local v16    # "receivedPdu":[B
    :catch_0
    move-exception v6

    .line 247
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v17, "Error in decoding SMS CB pdu"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    const/16 v17, 0x0

    return-object v17

    .line 217
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "cid":I
    .restart local v4    # "cl":Landroid/telephony/CellLocation;
    .restart local v7    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v10    # "lac":I
    .restart local v11    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v12    # "pageCount":I
    .restart local v15    # "plmn":Ljava/lang/String;
    .restart local v16    # "receivedPdu":[B
    :cond_5
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    new-array v14, v0, [[B

    .line 218
    .restart local v14    # "pdus":[[B
    const/16 v17, 0x0

    aput-object v16, v14, v17

    goto :goto_2

    .line 235
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v17

    const/16 v18, 0x1100

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 236
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v17

    const/16 v18, 0x1101

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 240
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->stopEtwsAlarm()V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->startEtwsAlarm()V

    .line 244
    :cond_8
    invoke-static {v7, v11, v14}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v17

    return-object v17

    .line 237
    :cond_9
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v17

    const/16 v18, 0x1102

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 238
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v17

    const/16 v18, 0x1103

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 239
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    const/16 v18, 0x1104

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    goto :goto_4

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 106
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 107
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    .line 108
    return-object v0
.end method


# virtual methods
.method protected handleEtwsPrimaryNotification(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 317
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_1

    .line 319
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 320
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/internal/telephony/EtwsNotification;

    .line 321
    .local v3, "noti":Lcom/mediatek/internal/telephony/EtwsNotification;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/EtwsNotification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->containDuplicatedEtwsNotification(Lcom/mediatek/internal/telephony/EtwsNotification;)Z

    move-result v2

    .line 324
    .local v2, "isDuplicated":Z
    if-nez v2, :cond_0

    .line 326
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->openEtwsChannel(Lcom/mediatek/internal/telephony/EtwsNotification;)V

    .line 329
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/EtwsNotification;->getEtwsPdu()[B

    move-result-object v4

    iget-object v5, v3, Lcom/mediatek/internal/telephony/EtwsNotification;->plmnId:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleEtwsPdu([BLjava/lang/String;)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    .line 330
    .local v1, "etwsPrimary":Landroid/telephony/SmsCbMessage;
    if-eqz v1, :cond_1

    .line 331
    const-string/jumbo v4, "ETWS Primary dispatch to App and open the necessary channels and start timer"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->stopEtwsAlarm()V

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->startEtwsAlarm()V

    .line 335
    return v6

    .line 339
    .end local v1    # "etwsPrimary":Landroid/telephony/SmsCbMessage;
    :cond_0
    const-string/jumbo v4, "find duplicated ETWS notifiction"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 340
    const/4 v4, 0x0

    return v4

    .line 343
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "isDuplicated":Z
    .end local v3    # "noti":Lcom/mediatek/internal/telephony/EtwsNotification;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleEtwsPrimaryNotification(Landroid/os/Message;)Z

    move-result v4

    return v4
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 119
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 121
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 123
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnEtwsNotification(Landroid/os/Handler;)V

    .line 96
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    .line 91
    return-void
.end method

.method protected startEtwsAlarm()V
    .locals 6

    .prologue
    .line 383
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 384
    .local v0, "am":Landroid/app/AlarmManager;
    const-string/jumbo v2, "startEtwsAlarm"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 385
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.telephony.etws"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 388
    const/high16 v4, 0x8000000

    .line 387
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 389
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 380
    return-void
.end method

.method protected stopEtwsAlarm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 396
    .local v0, "am":Landroid/app/AlarmManager;
    const-string/jumbo v1, "stopEtwsAlarm"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 399
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 393
    :cond_0
    return-void
.end method
