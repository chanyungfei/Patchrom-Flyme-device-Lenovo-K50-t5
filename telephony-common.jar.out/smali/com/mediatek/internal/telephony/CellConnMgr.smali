.class public Lcom/mediatek/internal/telephony/CellConnMgr;
.super Ljava/lang/Object;
.source "CellConnMgr.java"


# static fields
.field private static final INTENT_SET_RADIO_POWER:Ljava/lang/String; = "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

.field public static final STATE_FLIGHT_MODE:I = 0x1

.field public static final STATE_RADIO_OFF:I = 0x2

.field public static final STATE_READY:I = 0x0

.field public static final STATE_ROAMING:I = 0x8

.field public static final STATE_SIM_LOCKED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CellConnMgr"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    .line 54
    const-string/jumbo v1, "CellConnMgr must be created by indicated context"

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    return-void
.end method

.method private isRadioOffBySimManagement(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 352
    const/4 v2, 0x1

    .line 355
    .local v2, "result":Z
    :try_start_0
    const-string/jumbo v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 354
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 357
    .local v1, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 358
    const-string/jumbo v3, "CellConnMgr"

    const-string/jumbo v4, "[isRadioOffBySimManagement] iTelEx is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v3, 0x0

    return v3

    .line 362
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isRadioOffBySimManagement(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 367
    .end local v1    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v2    # "result":Z
    :goto_0
    const-string/jumbo v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isRadioOffBySimManagement]  subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v2

    .line 363
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 364
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isRadioOn(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 373
    const-string/jumbo v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRadioOff verify subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v2, 0x1

    .line 377
    .local v2, "radioOn":Z
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 376
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 379
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 380
    const-string/jumbo v3, "CellConnMgr"

    const-string/jumbo v4, "isRadioOff iTel is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v3, 0x0

    return v3

    .line 384
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 389
    .end local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "radioOn":Z
    :goto_0
    const-string/jumbo v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRadioOff subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " radio on? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v2

    .line 385
    .restart local v2    # "radioOn":Z
    :catch_0
    move-exception v0

    .line 386
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentState(II)I
    .locals 10
    .param p1, "subId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 74
    const/4 v5, 0x0

    .line 78
    .local v5, "state":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "airplane_mode_on"

    const/4 v9, -0x1

    .line 77
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, "flightMode":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRadioOn(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRadioOffBySimManagement(I)Z

    move-result v2

    .line 84
    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 85
    .local v4, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 87
    .local v6, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x2

    if-eq v8, v7, :cond_0

    .line 88
    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v8, v7, :cond_2

    .line 87
    :cond_0
    const/4 v1, 0x1

    .line 92
    .local v1, "isLocked":Z
    :goto_1
    const/4 v3, 0x0

    .line 94
    .local v3, "isRoaming":Z
    const-string/jumbo v7, "CellConnMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getCurrentState]subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", requestType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 95
    const-string/jumbo v9, "; (flight mode, radio off, locked, roaming) = ("

    .line 94
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 96
    const-string/jumbo v9, ","

    .line 94
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 96
    const-string/jumbo v9, ","

    .line 94
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 96
    const-string/jumbo v9, ","

    .line 94
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 96
    const-string/jumbo v9, ")"

    .line 94
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    packed-switch p2, :pswitch_data_0

    .line 124
    :pswitch_0
    const/4 v7, 0x1

    if-ne v0, v7, :cond_c

    const/4 v7, 0x1

    move v8, v7

    .line 125
    :goto_2
    if-eqz v2, :cond_d

    const/4 v7, 0x2

    .line 124
    :goto_3
    or-int/2addr v8, v7

    .line 126
    if-eqz v1, :cond_e

    const/4 v7, 0x4

    .line 124
    :goto_4
    or-int/2addr v8, v7

    .line 127
    if-eqz v3, :cond_f

    const/16 v7, 0x8

    .line 124
    :goto_5
    or-int v5, v8, v7

    .line 130
    :goto_6
    const-string/jumbo v7, "CellConnMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getCurrentState] state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v5

    .line 81
    .end local v1    # "isLocked":Z
    .end local v3    # "isRoaming":Z
    .end local v4    # "slotId":I
    .end local v6    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v2, 0x0

    .local v2, "isRadioOff":Z
    goto/16 :goto_0

    .line 89
    .end local v2    # "isRadioOff":Z
    .restart local v4    # "slotId":I
    .restart local v6    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x4

    if-ne v8, v7, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "isLocked":Z
    goto/16 :goto_1

    .end local v1    # "isLocked":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isLocked":Z
    goto/16 :goto_1

    .line 100
    .restart local v3    # "isRoaming":Z
    :pswitch_1
    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    const/4 v5, 0x1

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    goto :goto_6

    .line 104
    :pswitch_2
    if-eqz v2, :cond_5

    const/4 v5, 0x2

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .line 108
    :pswitch_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_6

    const/4 v7, 0x1

    move v8, v7

    .line 109
    :goto_7
    if-eqz v2, :cond_7

    const/4 v7, 0x2

    .line 108
    :goto_8
    or-int/2addr v8, v7

    .line 110
    if-eqz v1, :cond_8

    const/4 v7, 0x4

    .line 108
    :goto_9
    or-int v5, v8, v7

    .line 111
    goto :goto_6

    .line 108
    :cond_6
    const/4 v7, 0x0

    move v8, v7

    goto :goto_7

    .line 109
    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 110
    :cond_8
    const/4 v7, 0x0

    goto :goto_9

    .line 117
    :pswitch_4
    const/4 v7, 0x1

    if-ne v0, v7, :cond_9

    const/4 v7, 0x1

    move v8, v7

    .line 118
    :goto_a
    if-eqz v2, :cond_a

    const/4 v7, 0x2

    .line 117
    :goto_b
    or-int/2addr v8, v7

    .line 119
    if-eqz v3, :cond_b

    const/16 v7, 0x8

    .line 117
    :goto_c
    or-int v5, v8, v7

    .line 121
    goto :goto_6

    .line 117
    :cond_9
    const/4 v7, 0x0

    move v8, v7

    goto :goto_a

    .line 118
    :cond_a
    const/4 v7, 0x0

    goto :goto_b

    .line 119
    :cond_b
    const/4 v7, 0x0

    goto :goto_c

    .line 124
    :cond_c
    const/4 v7, 0x0

    move v8, v7

    goto :goto_2

    .line 125
    :cond_d
    const/4 v7, 0x0

    goto :goto_3

    .line 126
    :cond_e
    const/4 v7, 0x0

    goto :goto_4

    .line 127
    :cond_f
    const/4 v7, 0x0

    goto :goto_5

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getStringUsingState(II)Ljava/util/ArrayList;
    .locals 10
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x805009c

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "CellConnMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getStringUsingState] subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 158
    .local v1, "svlteSlot":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    and-int/lit8 v2, p2, 0x3

    if-ne v2, v8, :cond_1

    .line 162
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 163
    const v3, 0x80500a2

    .line 162
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 165
    const v3, 0x80500a3

    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 167
    const v3, 0x805009b

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const-string/jumbo v2, "CellConnMgr"

    const-string/jumbo v3, "[getStringUsingState] STATE_FLIGHT_MODE + STATE_RADIO_OFF"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    :goto_0
    const-string/jumbo v2, "CellConnMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getStringUsingState]stringList size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    return-object v2

    .line 171
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v6, :cond_2

    .line 173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 174
    const v3, 0x805007c

    .line 173
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 176
    const v3, 0x805007d

    .line 175
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 178
    const v3, 0x805009e

    .line 177
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string/jumbo v2, "CellConnMgr"

    const-string/jumbo v3, "[getStringUsingState] STATE_FLIGHT_MODE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-ne v2, v7, :cond_3

    .line 184
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 185
    const v3, 0x80500a4

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 187
    const v3, 0x80500a5

    .line 186
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 189
    const v3, 0x805009f

    .line 188
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string/jumbo v2, "CellConnMgr"

    const-string/jumbo v3, "[getStringUsingState] STATE_RADIO_OFF"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    :cond_3
    and-int/lit8 v2, p2, 0x4

    if-ne v2, v9, :cond_0

    .line 195
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 196
    const v3, 0x80500a6

    .line 195
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 198
    const v3, 0x80500a7

    .line 197
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 200
    const v3, 0x805009d

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const-string/jumbo v2, "CellConnMgr"

    const-string/jumbo v3, "[getStringUsingState] STATE_SIM_LOCKED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    :cond_4
    and-int/lit8 v2, p2, 0x3

    if-ne v2, v8, :cond_5

    .line 209
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 210
    const v3, 0x805008a

    .line 209
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 212
    const v3, 0x805008b

    .line 211
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 214
    const v3, 0x805009b

    .line 213
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const-string/jumbo v2, "CellConnMgr"

    const-string/jumbo v3, "[getStringUsingState] STATE_FLIGHT_MODE + STATE_RADIO_OFF"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 218
    :cond_5
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v6, :cond_6

    .line 220
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 221
    const v3, 0x805007c

    .line 220
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 223
    const v3, 0x805007d

    .line 222
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 225
    const v3, 0x805009e

    .line 224
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const-string/jumbo v2, "CellConnMgr"

    const-string/jumbo v3, "[getStringUsingState] STATE_FLIGHT_MODE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    :cond_6
    and-int/lit8 v2, p2, 0x2

    if-ne v2, v7, :cond_7

    .line 231
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 232
    const v3, 0x805007e

    .line 231
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 234
    const v3, 0x805007f

    .line 233
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 236
    const v3, 0x805009f

    .line 235
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    const-string/jumbo v2, "CellConnMgr"

    const-string/jumbo v3, "[getStringUsingState] STATE_RADIO_OFF"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    :cond_7
    and-int/lit8 v2, p2, 0x4

    if-ne v2, v9, :cond_0

    .line 242
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 243
    const v3, 0x805008c

    .line 242
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 245
    const v3, 0x805008d

    .line 244
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 247
    const v3, 0x805009d

    .line 246
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    const-string/jumbo v2, "CellConnMgr"

    const-string/jumbo v3, "[getStringUsingState] STATE_SIM_LOCKED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public handleRequest(II)V
    .locals 13
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 284
    const-string/jumbo v7, "CellConnMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[handleRequest] subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    and-int/lit8 v7, p2, 0x1

    if-ne v7, v11, :cond_0

    .line 289
    iget-object v7, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "airplane_mode_on"

    .line 288
    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    iget-object v7, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    .line 291
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "state"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    .line 292
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 290
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 294
    const-string/jumbo v7, "CellConnMgr"

    const-string/jumbo v8, "[handleRequest] Turn off flight mode."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    and-int/lit8 v7, p2, 0x2

    if-ne v7, v12, :cond_5

    .line 299
    const/4 v5, 0x0

    .line 300
    .local v5, "mSimMode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 302
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 304
    .local v6, "targetSubId":[I
    if-eqz v6, :cond_1

    aget v7, v6, v10

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRadioOn(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 305
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v7

    if-ne v2, v7, :cond_3

    .line 306
    :cond_2
    shl-int v7, v11, v2

    or-int/2addr v5, v7

    .line 300
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v6    # "targetSubId":[I
    :cond_4
    iget-object v7, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 311
    const-string/jumbo v8, "msim_mode_setting"

    .line 310
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "mode"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v7, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 317
    const-string/jumbo v7, "CellConnMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[handleRequest] Turn radio on, MSIM mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v2    # "i":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "mSimMode":I
    :cond_5
    and-int/lit8 v7, p2, 0x1

    if-eq v7, v11, :cond_6

    .line 323
    and-int/lit8 v7, p2, 0x2

    if-eq v7, v12, :cond_6

    .line 324
    and-int/lit8 v7, p2, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 333
    :try_start_0
    const-string/jumbo v7, "phoneEx"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 332
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    .line 335
    .local v3, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->broadcastIccUnlockIntent(I)Z

    .line 337
    const-string/jumbo v7, "CellConnMgr"

    const-string/jumbo v8, "[handleRequest] broadcastIccUnlockIntent"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v3    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_6
    :goto_1
    return-void

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "CellConnMgr"

    const-string/jumbo v8, "ITelephonyEx is null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 339
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 340
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
