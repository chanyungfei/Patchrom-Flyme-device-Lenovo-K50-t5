.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final EVENT_CDMA_SMS_DISPATCHER_BASE:I = 0x7d0

.field private static final EVENT_ICC_CHANGED:I = 0x7d1

.field private static final EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE:I = 0x7d5

.field private static final EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE_DONE:I = 0x7d6

.field private static final EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE:I = 0x7d3

.field private static final EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE_DONE:I = 0x7d4

.field private static final EVENT_RUIM_READY:I = 0x7d2

.field private static final QUERY_SMS_REGISTER_FEASIBILITY_DELAY_MILLISECONDS:I = 0x2710

.field private static final QUERY_SMS_REGISTER_FEASIBILITY_MAX_RETRY_TIMES:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher"

.field private static final VDBG:Z = true


# instance fields
.field private mCdmaModemSmsInitDone:Z

.field private mCdmaNetworkRegistered:Z

.field private mQueryCDMASmsRegisterFeasibilityTimes:I

.field private mSmsRegisterFeasibilityQuerying:Z

.field private mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 91
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 110
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 111
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    .line 122
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x7d1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "viacode, mUiccController != null, register for icc change successly for CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "viacode, is not CDMA phone, dont do CT sms register work"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_1
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "viacode, mUiccController = null, cant register for icc change"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyCdmaSmsAutoRegisterBeFeasible()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 143
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    if-eqz v3, :cond_0

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.provider.Telephony.CDMA_AUTO_SMS_REGISTER_FEASIBLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 156
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "CDMASMSDispatcher"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 157
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 158
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 159
    const-string/jumbo v3, "rTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    const-string/jumbo v3, "subscription"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSubId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "viacode, app can do auto sms register work now"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    .line 142
    return-void

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_0
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "viacode, notifyCdmaSmsAutoRegisterBeFeasible failed for not both true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string/jumbo v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "viacode, mCdmaNetworkRegistered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 146
    const-string/jumbo v5, " , mCdmaModemSmsInitDone = "

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 146
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method private onUpdateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 168
    const-string/jumbo v2, "CdmaSMSDispatcher"

    const-string/jumbo v3, "viacode, CdmaSMSDispatcher received EVENT_ICC_CHANGED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_0

    .line 170
    const-string/jumbo v2, "CdmaSMSDispatcher"

    const-string/jumbo v3, "viacode, but mUiccController == null, cant do nothing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getExternalModemSlot()I

    move-result v1

    .line 175
    .local v1, "slotId":I
    const-string/jumbo v2, "CdmaSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CdmaSMSDispatcher received EVENT_ICC_CHANGED, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 179
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v2, v0, :cond_2

    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_1

    .line 181
    const-string/jumbo v2, "CdmaSMSDispatcher"

    const-string/jumbo v3, "viacode, Removing stale icc objects, mUiccApplcation have changed!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 183
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 185
    :cond_1
    if-eqz v0, :cond_2

    .line 186
    const-string/jumbo v2, "CdmaSMSDispatcher"

    const-string/jumbo v3, "viacode, New card found!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 188
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x7d2

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    const-string/jumbo v2, "CdmaSMSDispatcher"

    const-string/jumbo v3, "viacode, register for EVENT_RUIM_READY successly"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    return-void
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 9
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 658
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "CDMASMSDispatcher: copy text message to icc card"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    .line 669
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 673
    .local v2, "msgCount":I
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText storage available"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-eq p4, v7, :cond_0

    const/4 v4, 0x3

    if-ne p4, v4, :cond_1

    .line 680
    :cond_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText to encode deliver pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :goto_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[copyText msgCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    if-le v2, v7, :cond_4

    .line 690
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText multi-part message"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 699
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-nez v4, :cond_6

    .line 700
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText Exception happened when copy message"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return v7

    .line 681
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x5

    if-eq p4, v4, :cond_2

    const/4 v4, 0x7

    if-ne p4, v4, :cond_3

    .line 682
    :cond_2
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText to encode submit pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    :cond_3
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText invalid status, default is deliver pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return v7

    .line 691
    :cond_4
    if-ne v2, v7, :cond_5

    .line 692
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText single-part message"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 694
    :cond_5
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText invalid message count"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return v7

    .line 704
    .restart local v1    # "i":I
    :cond_6
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p2, v4, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 706
    .local v3, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v3, :cond_7

    .line 707
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText write submit pdu into UIM"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 709
    const/16 v6, 0x6a

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 708
    invoke-interface {v4, p4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V

    .line 714
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 716
    :try_start_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v6, "[copyText wait until the message be wrote in UIM"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 723
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText thread is waked up"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 711
    :cond_7
    return v7

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v6, "[copyText interrupted while trying to copy text message into UIM"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 720
    return v7

    .line 714
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 726
    .end local v3    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-eqz v4, :cond_9

    .line 727
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText all messages have been copied into UIM"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v4, 0x0

    return v4

    .line 731
    :cond_9
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText copy failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return v7
.end method

.method protected createMessageFromSubmitPdu([B[B)Landroid/telephony/SmsMessage;
    .locals 4
    .param p1, "smsc"    # [B
    .param p2, "tpdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1123
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->getSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    move-result-object v0

    .line 1124
    .local v0, "mSmsInterfaces":Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    if-nez v0, :cond_0

    .line 1125
    const-string/jumbo v1, "CdmaSMSDispatcher"

    const-string/jumbo v2, "createMessageFromSubmitPdu, mSmsInterfaces = null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-object v3

    .line 1129
    :cond_0
    invoke-interface {v0, p2}, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;->convertSubmitpduToPdu([B)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 1128
    invoke-static {v1, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    return-object v1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 318
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "CdmaSMSDispatcher dispose"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->removeMessages(I)V

    .line 320
    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 315
    :cond_1
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string/jumbo v0, "3gpp2"

    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 20
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v19, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 462
    .local v19, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 463
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 464
    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 466
    const/4 v5, 0x2

    move-object/from16 v0, v19

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 472
    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, v19

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 473
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "viacode: to use the encoding type ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eqz p7, :cond_2

    .line 478
    .end local p8    # "lastPart":Z
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 480
    .local v18, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v18, :cond_3

    .line 481
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "CDMASMSDispatcher.getNewSubmitPduTracker(), L, getSubmitPdu() returned null, A"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v5, 0x0

    return-object v5

    .line 467
    .end local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local p8    # "lastPart":Z
    :cond_0
    const/4 v5, 0x2

    move/from16 v0, p5

    if-ne v0, v5, :cond_1

    .line 468
    const/4 v5, 0x0

    move-object/from16 v0, v19

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 470
    :cond_1
    const/4 v5, 0x4

    move-object/from16 v0, v19

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 479
    :cond_2
    const/16 p8, 0x0

    goto :goto_1

    .line 485
    .end local p8    # "lastPart":Z
    .restart local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 488
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    .line 489
    const/4 v14, 0x0

    const/16 v16, 0x1

    .line 490
    const/16 v17, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    .line 487
    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    return-object v5
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;II)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "validityPeriod"    # I
    .param p14, "priority"    # I

    .prologue
    .line 502
    if-eqz p7, :cond_0

    move/from16 v8, p8

    :goto_0
    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p13

    move/from16 v12, p14

    .line 501
    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 504
    .local v18, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v18, :cond_1

    .line 505
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 508
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    .line 509
    const/4 v14, 0x0

    const/16 v16, 0x1

    .line 510
    const/16 v17, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    .line 507
    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    return-object v5

    .line 502
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 512
    .restart local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "CDMASMSDispatcher.getNewSubmitPduTracker(), L, getSubmitPdu() returned null, B"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v5, 0x0

    return-object v5
.end method

.method handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 355
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 356
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 357
    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    if-ne v6, v7, :cond_1

    .line 359
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 361
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 363
    iget-object v4, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 364
    .local v4, "intent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v2, "fillIn":Landroid/content/Intent;
    const-string/jumbo v6, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 366
    const-string/jumbo v6, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v2    # "fillIn":Landroid/content/Intent;
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 355
    .restart local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    .restart local v2    # "fillIn":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0x7d5

    const-wide/16 v8, 0x2710

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 201
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 309
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 200
    :goto_0
    return-void

    .line 203
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->onUpdateIccAvailability()V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-nez v4, :cond_0

    .line 207
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode, received EVENT_RUIM_READY in CDMASmsDispather"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    .line 209
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 210
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 211
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 212
    const/16 v5, 0x7d4

    .line 211
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMANetWorkRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 214
    :cond_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode, received EVENT_RUIM_READY, but query processing, dont need query multi."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :pswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 220
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode, do network register state query again, retry times = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 221
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 223
    const/16 v5, 0x64

    .line 222
    if-le v4, v5, :cond_1

    .line 224
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "over retry limits(100), query cdma sms register feasibility failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto :goto_0

    .line 229
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 230
    const/16 v5, 0x7d4

    .line 229
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMANetWorkRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 235
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-eqz v4, :cond_4

    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .local v0, "aresult":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    .line 238
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 239
    .local v3, "res":[I
    if-eqz v3, :cond_2

    array-length v4, v3

    if-ne v4, v6, :cond_2

    aget v4, v3, v7

    if-ne v4, v6, :cond_2

    .line 242
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 243
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    .line 244
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 247
    :cond_2
    const/16 v4, 0x7d3

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 252
    .end local v3    # "res":[I
    :cond_3
    const/16 v4, 0x7d3

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 256
    .end local v0    # "aresult":Landroid/os/AsyncResult;
    :cond_4
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode, received EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE_DONE but is not querying"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode, must make sure is retrying in the same instance, drop this done EVENT if is not retry querying."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 264
    :pswitch_4
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 265
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode, do sms init state query again, retry times = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 266
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 265
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 268
    const/16 v5, 0x64

    .line 267
    if-le v4, v5, :cond_5

    .line 269
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "over retry limits(100), query cdma modem sms init state failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto/16 :goto_0

    .line 274
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 275
    const/16 v5, 0x7d6

    .line 274
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMASmsAndPBStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 280
    :pswitch_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-eqz v4, :cond_8

    .line 281
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 282
    .local v1, "asyncresult":Landroid/os/AsyncResult;
    if-eqz v1, :cond_7

    .line 283
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 284
    .local v2, "queryres":[I
    if-eqz v2, :cond_6

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    aget v4, v2, v7

    if-ne v4, v6, :cond_6

    .line 287
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 288
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    .line 289
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->notifyCdmaSmsAutoRegisterBeFeasible()V

    goto/16 :goto_0

    .line 292
    :cond_6
    invoke-virtual {p0, v10, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 297
    .end local v2    # "queryres":[I
    :cond_7
    invoke-virtual {p0, v10, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 301
    .end local v1    # "asyncresult":Landroid/os/AsyncResult;
    :cond_8
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode, received EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE_DONE but is not querying"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode, must make sure is retrying in the same instance, drop this done EVENT if is not retry querying."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 342
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    .line 343
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "calling handleCdmaStatusReport()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 341
    :goto_0
    return-void

    .line 346
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "CdmaSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStatusReport() called for object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This method must be called only on ImsSMSDispatcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "originalPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 616
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendData"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz p7, :cond_0

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    .line 618
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 620
    .local v8, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v8, :cond_1

    .line 621
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "via sendData error: invalid paramters, pdu == null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void

    .line 619
    .end local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .restart local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    .line 624
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 625
    .local v10, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v13

    .line 626
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 627
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v9, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 625
    invoke-virtual/range {v9 .. v18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .line 629
    .local v21, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v19

    .line 630
    .local v19, "carrierPackage":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 631
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "Found carrier package. w/op"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v20, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 633
    .local v20, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 614
    .end local v20    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    :goto_1
    return-void

    .line 635
    :cond_2
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "No carrier package. w/op"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 24
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 380
    if-eqz p6, :cond_1

    const/4 v4, 0x1

    .line 379
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 381
    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v9, :cond_3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 382
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .line 383
    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    .line 384
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 385
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 383
    invoke-virtual/range {v10 .. v19}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v23

    .line 387
    .local v23, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v20

    .line 388
    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 389
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v22, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 391
    .local v22, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 378
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v22    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    .end local v23    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 380
    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 393
    .restart local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v11    # "map":Ljava/util/HashMap;
    .restart local v20    # "carrierPackage":Ljava/lang/String;
    .restart local v23    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 397
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v23    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "CdmaSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-eqz p5, :cond_0

    .line 400
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    :catch_0
    move-exception v21

    .line 402
    .local v21, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "Intent has been canceled!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "Error! The functionality sendMultipartData is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method protected sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 28
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 817
    .local v16, "fullMessageText":Ljava/lang/String;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendMultipartTextWithEncodingType"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v24, v0

    .line 820
    .local v24, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 821
    .local v23, "msgCount":I
    move/from16 v20, p4

    .line 822
    .local v20, "encoding":I
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode: want to use encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    if-ltz v20, :cond_0

    const/16 v4, 0xa

    move/from16 v0, v20

    if-le v0, v4, :cond_1

    .line 826
    :cond_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode: unavalid encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode: to use the unkown default."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/16 v20, 0x0

    .line 831
    :cond_1
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v21, v0

    .line 832
    .local v21, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v20, :cond_4

    .line 833
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode: unkown encoding, to find one best."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 835
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v19

    .line 836
    .local v19, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_3

    .line 837
    if-eqz v20, :cond_2

    .line 838
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_3

    .line 839
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v20, v0

    .line 841
    :cond_3
    aput-object v19, v21, v22

    .line 834
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 844
    .end local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v22    # "i":I
    :cond_4
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode: APP want use specified encoding type."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 847
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v19

    .line 848
    .restart local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 849
    aput-object v19, v21, v22

    .line 845
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 853
    .end local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v27, v0

    .line 856
    .local v27, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 857
    .local v13, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 859
    .local v14, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode: now to send one by one, msgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 861
    new-instance v18, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 862
    .local v18, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 863
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 864
    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 871
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 872
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 873
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 875
    const/4 v10, 0x0

    .line 876
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-le v4, v0, :cond_6

    .line 877
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 880
    :cond_6
    const/4 v11, 0x0

    .line 881
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-le v4, v0, :cond_7

    .line 882
    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 885
    :cond_7
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode: to send the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " part"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 888
    aget-object v4, v21, v22

    iget v9, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 889
    add-int/lit8 v4, v23, -0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_8

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p7

    .line 887
    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 886
    aput-object v4, v27, v22

    .line 891
    aget-object v4, v27, v22

    move/from16 v0, p9

    iput-boolean v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    .line 860
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 889
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 894
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v18    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_9
    if-eqz p3, :cond_a

    if-nez v27, :cond_b

    .line 896
    :cond_a
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMultipartTextWithEncodingType: Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 897
    const-string/jumbo v6, " trackers="

    .line 896
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return-void

    .line 894
    :cond_b
    move-object/from16 v0, v27

    array-length v4, v0

    if-eqz v4, :cond_a

    .line 895
    const/4 v4, 0x0

    aget-object v4, v27, v4

    if-eqz v4, :cond_a

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v17

    .line 902
    .local v17, "carrierPackage":Ljava/lang/String;
    if-eqz v17, :cond_d

    .line 903
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "sendMultipartTextWithEncodingType: Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v25, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 906
    .local v25, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    .line 905
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 812
    .end local v25    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_c
    return-void

    .line 908
    :cond_d
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "sendMultipartTextWithEncodingType: No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v4, 0x0

    move-object/from16 v0, v27

    array-length v5, v0

    :goto_4
    if-ge v4, v5, :cond_c

    aget-object v26, v27, v4

    .line 910
    .local v26, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v26, :cond_e

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 909
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 913
    :cond_e
    const-string/jumbo v6, "CdmaSMSDispatcher"

    const-string/jumbo v7, "sendMultipartTextWithEncodingType: Null tracker."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 30
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 1003
    .local v16, "fullMessageText":Ljava/lang/String;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendMultipartTextWithExtraParams"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    if-nez p4, :cond_4

    .line 1010
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode: extraParams == null, will encoding with no extra feature."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/16 v17, -0x1

    .line 1012
    .local v17, "validityPeriod":I
    const/16 v18, -0x1

    .line 1013
    .local v18, "priority":I
    const/16 v22, 0x0

    .line 1020
    .local v22, "encoding":I
    :goto_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode: validityPeriod is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode: priority is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode: want to use encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v26, v0

    .line 1025
    .local v26, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 1028
    .local v25, "msgCount":I
    if-ltz v22, :cond_0

    const/16 v4, 0xa

    move/from16 v0, v22

    if-le v0, v4, :cond_1

    .line 1029
    :cond_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode: unavalid encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode: to use the unkown default."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/16 v22, 0x0

    .line 1034
    :cond_1
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v23, v0

    .line 1035
    .local v23, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v22, :cond_5

    .line 1036
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode: unkown encoding, to find one best."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 1038
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v21

    .line 1039
    .local v21, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v22

    if-eq v0, v4, :cond_3

    .line 1040
    if-eqz v22, :cond_2

    .line 1041
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_3

    .line 1042
    :cond_2
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v22, v0

    .line 1044
    :cond_3
    aput-object v21, v23, v24

    .line 1037
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 1015
    .end local v17    # "validityPeriod":I
    .end local v18    # "priority":I
    .end local v21    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v22    # "encoding":I
    .end local v23    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v24    # "i":I
    .end local v25    # "msgCount":I
    .end local v26    # "refNumber":I
    :cond_4
    const-string/jumbo v4, "validity_period"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1016
    .restart local v17    # "validityPeriod":I
    const-string/jumbo v4, "priority"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1017
    .restart local v18    # "priority":I
    const-string/jumbo v4, "encoding_type"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .restart local v22    # "encoding":I
    goto/16 :goto_0

    .line 1047
    .restart local v23    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v25    # "msgCount":I
    .restart local v26    # "refNumber":I
    :cond_5
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "viacode: APP want use specified encoding type."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 1050
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v21

    .line 1051
    .restart local v21    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1052
    aput-object v21, v23, v24

    .line 1048
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 1056
    .end local v21    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v29, v0

    .line 1059
    .local v29, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1060
    .local v13, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1062
    .local v14, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "viacode: now to send one by one, msgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 1064
    new-instance v20, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1065
    .local v20, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1066
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1067
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1074
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1075
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1076
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1078
    const/4 v10, 0x0

    .line 1079
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_7

    .line 1080
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 1083
    :cond_7
    const/4 v11, 0x0

    .line 1084
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_8

    .line 1085
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 1089
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1090
    aget-object v4, v23, v24

    iget v9, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1091
    add-int/lit8 v4, v25, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_9

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p7

    .line 1089
    invoke-virtual/range {v4 .. v18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;II)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 1088
    aput-object v4, v29, v24

    .line 1094
    aget-object v4, v29, v24

    move/from16 v0, p9

    iput-boolean v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    .line 1063
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1091
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 1097
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v20    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_a
    if-eqz p3, :cond_b

    if-nez v29, :cond_c

    .line 1099
    :cond_b
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMultipartTextWithExtraParams: Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1100
    const-string/jumbo v6, " trackers="

    .line 1099
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return-void

    .line 1097
    :cond_c
    move-object/from16 v0, v29

    array-length v4, v0

    if-eqz v4, :cond_b

    .line 1098
    const/4 v4, 0x0

    aget-object v4, v29, v4

    if-eqz v4, :cond_b

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1105
    .local v19, "carrierPackage":Ljava/lang/String;
    if-eqz v19, :cond_e

    .line 1106
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "sendMultipartTextWithExtraParams: Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-instance v27, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1109
    .local v27, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    .line 1108
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 998
    .end local v27    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_d
    return-void

    .line 1111
    :cond_e
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "sendMultipartTextWithExtraParams: No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v4, 0x0

    move-object/from16 v0, v29

    array-length v5, v0

    :goto_5
    if-ge v4, v5, :cond_d

    aget-object v28, v29, v4

    .line 1113
    .local v28, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v28, :cond_f

    .line 1114
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1112
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1116
    :cond_f
    const-string/jumbo v6, "CdmaSMSDispatcher"

    const-string/jumbo v7, "sendMultipartTextWithExtraParams: Null tracker."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 534
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 537
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "pdu"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 540
    .local v2, "pdu":[B
    const/4 v0, 0x0

    .line 541
    .local v0, "isReadySend":Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 542
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 543
    :cond_0
    const-string/jumbo v3, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Add tracker into the list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 547
    const/4 v0, 0x1

    :cond_2
    monitor-exit v4

    .line 551
    if-nez v0, :cond_3

    .line 552
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "There is another tracker in-queue and is sending"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void

    .line 541
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 557
    :cond_3
    const-string/jumbo v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendSms:  isIms()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 558
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 559
    const-string/jumbo v5, " mRetryCount="

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 559
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 560
    const-string/jumbo v5, " mImsRetry="

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 560
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 561
    const-string/jumbo v5, " mMessageRef="

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 561
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 562
    const-string/jumbo v5, " SS="

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 562
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 533
    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 570
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 572
    .local v4, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 576
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 577
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 578
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "updatePhoneObject, remove tracker."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    .line 580
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 579
    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 576
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_0
    monitor-exit v6

    .line 584
    return-void

    .line 587
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 588
    .local v3, "reply":Landroid/os/Message;
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v6, "pdu"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 590
    .local v2, "pdu":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 591
    .local v0, "currentDataNetwork":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_5

    .line 592
    const/16 v5, 0xd

    if-ne v0, v5, :cond_2

    .line 593
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 591
    :cond_2
    const/4 v1, 0x0

    .line 602
    .local v1, "imsSmsDisabled":Z
    :goto_1
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    if-eqz v1, :cond_7

    .line 603
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 569
    :goto_2
    return-void

    .line 594
    .end local v1    # "imsSmsDisabled":Z
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    .line 595
    const/4 v6, 0x7

    .line 594
    if-ne v5, v6, :cond_2

    .line 596
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_6

    const/4 v1, 0x1

    .restart local v1    # "imsSmsDisabled":Z
    goto :goto_1

    .end local v1    # "imsSmsDisabled":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "imsSmsDisabled":Z
    goto :goto_1

    .line 605
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v5, v2, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 608
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_2
.end method

.method sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 336
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "sending EVENT_HANDLE_STATUS_REPORT message"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 335
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x0

    .line 521
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 526
    return-void

    .line 528
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 520
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 653
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "Error! The functionality sendText with port is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 20
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z

    .prologue
    .line 414
    if-eqz p5, :cond_1

    const/4 v5, 0x1

    :goto_0
    const/4 v7, 0x0

    .line 413
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v5, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 415
    .local v17, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v17, :cond_3

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 417
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    .line 418
    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p3

    move/from16 v14, p8

    .line 417
    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v19

    .line 420
    .local v19, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v15

    .line 421
    .local v15, "carrierPackage":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 422
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "Found carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v18, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 424
    .local v18, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 412
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v18    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 414
    .end local v17    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 426
    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v15    # "carrierPackage":Ljava/lang/String;
    .restart local v17    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "No carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 430
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz p4, :cond_0

    .line 433
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 434
    :catch_0
    move-exception v16

    .line 435
    .local v16, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "Intent has been canceled!"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 23
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z

    .prologue
    .line 740
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendTextWithEncodingType"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    move/from16 v17, p4

    .line 744
    .local v17, "encoding":I
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "viacode: want to use encoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-ltz v17, :cond_0

    const/16 v5, 0xa

    move/from16 v0, v17

    if-le v0, v5, :cond_1

    .line 748
    :cond_0
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "viacode: unavalid encoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "viacode: to use the unkown default."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/16 v17, 0x0

    .line 753
    :cond_1
    if-nez v17, :cond_3

    .line 754
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "viacode: unkown encoding, to find one best."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v16

    .line 756
    .local v16, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v17

    if-eq v0, v5, :cond_3

    .line 757
    if-eqz v17, :cond_2

    .line 758
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_3

    .line 759
    :cond_2
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v17, v0

    .line 763
    .end local v16    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    new-instance v22, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 764
    .local v22, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 765
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_5

    .line 766
    const/4 v5, 0x2

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 772
    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 779
    if-eqz p6, :cond_7

    const/4 v5, 0x1

    .line 778
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 781
    .local v20, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v20, :cond_9

    .line 782
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 783
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    .line 784
    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p3

    move/from16 v14, p9

    .line 783
    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .line 787
    .local v21, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v15

    .line 788
    .local v15, "carrierPackage":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 789
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "sendTextWithEncodingType: Found carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v19, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 791
    .local v19, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 738
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v19    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    :goto_2
    return-void

    .line 767
    .end local v20    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v5, 0x2

    move/from16 v0, v17

    if-ne v0, v5, :cond_6

    .line 768
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 770
    :cond_6
    const/4 v5, 0x4

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 779
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 793
    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v15    # "carrierPackage":Ljava/lang/String;
    .restart local v20    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "sendTextWithEncodingType: No carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 797
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_9
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "viacode : sendTextWithEncodingType: submitPdu is null"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    if-eqz p5, :cond_4

    .line 800
    const/4 v5, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 801
    :catch_0
    move-exception v18

    .line 802
    .local v18, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 29
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z

    .prologue
    .line 924
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendTextWithExtraParams"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    if-nez p4, :cond_5

    .line 932
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "viacode: extraParams == null, will encoding with no extra feature."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v11, -0x1

    .line 934
    .local v11, "validityPeriod":I
    const/4 v12, -0x1

    .line 935
    .local v12, "priority":I
    const/4 v10, 0x0

    .line 942
    .local v10, "encoding":I
    :goto_0
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "viacode: validityPeriod is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "viacode: priority is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "viacode: want to use encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    if-ltz v10, :cond_0

    const/16 v5, 0xa

    if-le v10, v5, :cond_1

    .line 948
    :cond_0
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "viacode: unavalid encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "viacode: to use the unkown default."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/4 v10, 0x0

    .line 953
    :cond_1
    if-nez v10, :cond_3

    .line 954
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "viacode: unkown encoding, to find one best."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v24

    .line 956
    .local v24, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_3

    .line 957
    if-eqz v10, :cond_2

    .line 958
    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    .line 959
    :cond_2
    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 965
    .end local v24    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    if-eqz p6, :cond_6

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    .line 964
    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v27

    .line 967
    .local v27, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v27, :cond_8

    .line 968
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v14

    .line 969
    .local v14, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v17

    .line 970
    const/16 v19, 0x0

    const/16 v21, 0x1

    move-object/from16 v13, p0

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v18, p7

    move-object/from16 v20, p3

    move/from16 v22, p9

    .line 969
    invoke-virtual/range {v13 .. v22}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v28

    .line 973
    .local v28, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v23

    .line 974
    .local v23, "carrierPackage":Ljava/lang/String;
    if-eqz v23, :cond_7

    .line 975
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "sendTextWithExtraParams: Found carrier package."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v26, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 977
    .local v26, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 922
    .end local v14    # "map":Ljava/util/HashMap;
    .end local v23    # "carrierPackage":Ljava/lang/String;
    .end local v26    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    :goto_2
    return-void

    .line 937
    .end local v10    # "encoding":I
    .end local v11    # "validityPeriod":I
    .end local v12    # "priority":I
    .end local v27    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const-string/jumbo v5, "validity_period"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 938
    .restart local v11    # "validityPeriod":I
    const-string/jumbo v5, "priority"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 939
    .restart local v12    # "priority":I
    const-string/jumbo v5, "encoding_type"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .restart local v10    # "encoding":I
    goto/16 :goto_0

    .line 965
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 979
    .restart local v14    # "map":Ljava/util/HashMap;
    .restart local v23    # "carrierPackage":Ljava/lang/String;
    .restart local v27    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "sendTextWithExtraParams: No carrier package."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 983
    .end local v14    # "map":Ljava/util/HashMap;
    .end local v23    # "carrierPackage":Ljava/lang/String;
    .end local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "viacode : sendTextWithExtraParams: submitPdu is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    if-eqz p5, :cond_4

    .line 986
    const/4 v5, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 987
    :catch_0
    move-exception v25

    .line 988
    .local v25, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
