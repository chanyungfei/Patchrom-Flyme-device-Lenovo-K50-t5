.class public final Lcom/android/internal/telephony/uicc/RuimRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;,
        Lcom/android/internal/telephony/uicc/RuimRecords$1;
    }
.end annotation


# static fields
.field private static final EVENT_CDMA_IMSI_READY_QUERY_DONE:I = 0x68

.field private static final EVENT_CDMA_IMSI_READY_TO_QUERY:I = 0x67

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_ECC_DONE:I = 0x69

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_IMSI_RETRY:I = 0x6

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PHB_READY:I = 0x66

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "RuimRecords"

.field static final SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;


# instance fields
.field private RUIMRECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

.field mCsimSpnDisplayCondition:Z

.field private mDispose:Z

.field private mEFli:[B

.field private mEFpl:[B

.field mEfEcc:Ljava/lang/String;

.field private final mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mNai:Ljava/lang/String;

.field private mOtaCommited:Z

.field private mPhbReady:Z

.field private mPhbWaitSub:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneId:I

.field private mPrlVersion:Ljava/lang/String;

.field private mRuimImsi:Ljava/lang/String;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/uicc/RuimRecords;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/uicc/RuimRecords;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbWaitSub:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbWaitSub:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/RuimRecords;I)I
    .locals 1
    .param p1, "digits"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->adjstMinDigits(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 131
    const-string/jumbo v1, "gsm.sim.ril.phbready"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "gsm.sim.ril.phbready.2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "gsm.sim.ril.phbready.3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "gsm.sim.ril.phbready.4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 130
    sput-object v0, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 72
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    .line 81
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    .line 82
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    .line 83
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 89
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimImsi:Ljava/lang/String;

    .line 137
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 138
    const-string/jumbo v3, "cdma.ril.ecclist"

    aput-object v3, v2, v6

    .line 139
    const-string/jumbo v3, "cdma.ril.ecclist1"

    aput-object v3, v2, v7

    .line 140
    const-string/jumbo v3, "cdma.ril.ecclist2"

    aput-object v3, v2, v8

    .line 141
    const-string/jumbo v3, "cdma.ril.ecclist3"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 137
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->RUIMRECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    .line 144
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    .line 147
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbWaitSub:Z

    .line 149
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDispose:Z

    .line 151
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEfEcc:Ljava/lang/String;

    .line 1415
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/RuimRecords$1;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhoneId:I

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 157
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3, p3, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 159
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 162
    iput v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 165
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1f

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x66

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x67

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, "phbFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 181
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0, v7, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RuimRecords X ctor this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 188
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v1, "subFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    const-string/jumbo v2, "RuimRecords updateIccRecords in IccPhoneBookeInterfaceManager"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isPhbReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    const-string/jumbo v2, "RuimRecords : Phonebook is ready."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 202
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 152
    :cond_0
    return-void
.end method

.method private adjstMinDigits(I)I
    .locals 1
    .param p1, "digits"    # I

    .prologue
    .line 320
    add-int/lit8 p1, p1, 0x6f

    .line 321
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 322
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 323
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    .line 324
    :cond_2
    return p1
.end method

.method private fetchEccList()V
    .locals 3

    .prologue
    .line 1540
    const-string/jumbo v0, "fetchEccList()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1542
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEfEcc:Ljava/lang/String;

    .line 1543
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f47

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1538
    return-void
.end method

.method private fetchRuimRecords()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x64

    .line 1110
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1114
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1115
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1122
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccIdRecord()V

    .line 1123
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1126
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1127
    .local v0, "resource":Landroid/content/res/Resources;
    const v1, 0x1120095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1129
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1128
    const/16 v3, 0x2f05

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1130
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1132
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1133
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1132
    const/16 v3, 0x6f3a

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1134
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1138
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1137
    const/16 v3, 0x6f41

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1139
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1141
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1142
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1141
    const/16 v3, 0x6f44

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1143
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1145
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1146
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1145
    const/16 v3, 0x6f22

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1147
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1149
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1150
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1149
    const/16 v3, 0x6f28

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1151
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1155
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1156
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1155
    const/16 v3, 0x6f5a

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 1157
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1159
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1160
    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1159
    const/16 v3, 0x6f4d

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1161
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method private static getAssetLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1005
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v3

    .line 1006
    .local v3, "locales":[Ljava/lang/String;
    array-length v5, v3

    new-array v1, v5, [Ljava/lang/String;

    .line 1007
    .local v1, "localeLangs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 1008
    aget-object v2, v3, v0

    .line 1009
    .local v2, "localeStr":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1010
    .local v4, "separator":I
    if-gez v4, :cond_0

    .line 1011
    aput-object v2, v1, v0

    .line 1007
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    goto :goto_1

    .line 1017
    .end local v2    # "localeStr":Ljava/lang/String;
    .end local v4    # "separator":I
    :cond_1
    return-object v1
.end method

.method private getIMSIDelay(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 1104
    const-string/jumbo v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "to getIMSIDelay, delayMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/RuimRecords;->sendEmptyMessageDelayed(IJ)Z

    .line 1103
    return-void
.end method

.method private handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 1
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 1238
    if-nez p1, :cond_0

    .line 1239
    const-string/jumbo v0, "handleRuimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1240
    return-void

    .line 1244
    :cond_0
    const-string/jumbo v0, "handleRuimRefresh process ruim refresh"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1276
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 1288
    const-string/jumbo v0, "Refresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1237
    :goto_0
    return-void

    .line 1281
    :pswitch_0
    const-string/jumbo v0, "Refresh with NAA file change"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1285
    :pswitch_1
    const-string/jumbo v0, "Refresh with UICC reset 0x04"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSvlteRoaming()Z
    .locals 5

    .prologue
    .line 1518
    const/4 v1, 0x0

    .line 1520
    .local v1, "roaming":Z
    const/4 v3, 0x0

    .line 1519
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v2

    .line 1521
    .local v2, "sLteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    const/4 v0, 0x0

    .line 1522
    .local v0, "mRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    if-eqz v2, :cond_0

    .line 1523
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 1524
    .local v0, "mRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSvlteRoaming get roaming state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1525
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v3, v0, :cond_0

    .line 1526
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v3, v0, :cond_0

    .line 1527
    const/4 v1, 0x1

    .line 1530
    .end local v0    # "mRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSvlteRoaming? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1531
    return v1
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x3

    .line 580
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 581
    .local v0, "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CSIM_EPRL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 584
    array-length v2, v0

    if-le v2, v4, :cond_0

    .line 585
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 586
    .local v1, "prlId":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 588
    .end local v1    # "prlId":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CSIM PRL version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 577
    return-void
.end method


# virtual methods
.method public broadcastPhbStateChangedIntent(Z)V
    .locals 3
    .param p1, "isReady"    # Z

    .prologue
    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "broadcastPhbStateChangedIntent, mPhbReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1346
    if-eqz p1, :cond_1

    .line 1349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ruim records phonetype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1351
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1352
    const-string/jumbo v1, "broadcastPhbStateChangedIntent, Not active Phone."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1353
    return-void

    .line 1356
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSubId:I

    .line 1358
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSubId:I

    if-gtz v1, :cond_2

    .line 1359
    const-string/jumbo v1, "broadcastPhbStateChangedIntent, mSubId <= 0"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1360
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbWaitSub:Z

    .line 1361
    return-void

    .line 1364
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSubId:I

    if-gtz v1, :cond_2

    .line 1365
    const-string/jumbo v1, "broadcastPhbStateChangedIntent, isReady == false and mSubId <= 0"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1366
    return-void

    .line 1370
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PHB_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ready"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1372
    const-string/jumbo v1, "subscription"

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Broadcasting intent ACTION_PHB_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1374
    const-string/jumbo v2, " sub id "

    .line 1373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1374
    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSubId:I

    .line 1373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1374
    const-string/jumbo v2, " phoneId "

    .line 1373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1374
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    .line 1373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1375
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1377
    if-nez p1, :cond_3

    .line 1378
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSubId:I

    .line 1343
    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Disposing RuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Disposing RuimRecords mPhbReady  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 215
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    if-eqz v0, :cond_1

    .line 216
    const-string/jumbo v0, "Disposing RuimRecords set PHB unready"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v1

    aget-object v0, v0, v1

    .line 218
    const-string/jumbo v1, "false"

    .line 217
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    .line 220
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDispose:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 230
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbWaitSub:Z

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 234
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 208
    return-void

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dispose() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is not true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RuimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    const-string/jumbo v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mOtaCommited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mMyMobileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mMin2Min1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mEFpl[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mEFli[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCsimSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1324
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 239
    const-string/jumbo v0, "RuimRecords finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getCsimSpnDisplayCondition()Z
    .locals 1

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, "spn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDisplayRule mParentApp is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1177
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1176
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1179
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1180
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1182
    const-string/jumbo v2, "getDisplayRule, getOperatorBrandOverride is not null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1183
    const/4 v0, 0x2

    .line 1195
    .local v0, "rule":I
    :goto_1
    return v0

    .line 1177
    .end local v0    # "rule":I
    :cond_0
    const-string/jumbo v2, "null"

    goto :goto_0

    .line 1184
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    if-nez v2, :cond_2

    .line 1186
    const-string/jumbo v2, "getDisplayRule, no EF_SPN"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1187
    const/4 v0, 0x2

    .restart local v0    # "rule":I
    goto :goto_1

    .line 1188
    .end local v0    # "rule":I
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1192
    :cond_3
    const-string/jumbo v2, "getDisplayRule, show plmn"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1193
    const/4 v0, 0x2

    .restart local v0    # "rule":I
    goto :goto_1

    .line 1189
    .end local v0    # "rule":I
    :cond_4
    const-string/jumbo v2, "getDisplayRule, show spn"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1190
    const/4 v0, 0x1

    .line 1188
    .restart local v0    # "rule":I
    goto :goto_1
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 351
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 352
    return-object v2

    .line 355
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 359
    .local v0, "mcc":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 332
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 333
    return-object v2

    .line 336
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "mcc":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1232
    const-string/jumbo v0, "RuimRecords:getVoiceMessageCount - NOP for CDMA"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1233
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 721
    const/4 v6, 0x0

    .line 723
    .local v6, "isRecordLoadResponse":Z
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 724
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Received message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 725
    const-string/jumbo v11, "["

    .line 724
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 725
    iget v11, p1, Landroid/os/Message;->what:I

    .line 724
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 725
    const-string/jumbo v11, "] while being destroyed. Ignoring."

    .line 724
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 726
    return-void

    .line 729
    :cond_0
    :try_start_0
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 985
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 993
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    .line 716
    :cond_2
    :goto_1
    return-void

    .line 731
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onReady()V

    .line 734
    const-string/jumbo v10, "handleMessage (EVENT_APP_READY)"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 736
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchEccList()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 987
    :catch_0
    move-exception v4

    .line 989
    .local v4, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v10, "RuimRecords"

    const-string/jumbo v11, "Exception parsing RUIM record"

    invoke-static {v10, v11, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 992
    if-eqz v6, :cond_2

    .line 993
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    goto :goto_1

    .line 740
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string/jumbo v10, "Event EVENT_GET_IMSI_RETRY Received, to get through ril"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 741
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 990
    :catchall_0
    move-exception v10

    .line 992
    if-eqz v6, :cond_3

    .line 993
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    .line 990
    :cond_3
    throw v10

    .line 746
    :sswitch_2
    :try_start_4
    const-string/jumbo v10, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :sswitch_3
    const/4 v6, 0x1

    .line 753
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 754
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_4

    .line 755
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception querying IMSI, Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_4
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 763
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-lt v10, v11, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xf

    if-le v10, v11, :cond_6

    .line 764
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid IMSI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 765
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 767
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 768
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IMSI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "xxxxxxxxx"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 779
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 780
    .local v9, "operatorNumeric":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 781
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-gt v10, v11, :cond_8

    .line 782
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 787
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v10, :cond_a

    .line 788
    const/4 v6, 0x0

    .line 789
    const-wide/16 v10, 0xbb8

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSIDelay(J)V

    .line 798
    :cond_9
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimImsi:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 799
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimImsi:Ljava/lang/String;

    .line 800
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 801
    const-string/jumbo v10, "RuimRecords: mImsiReadyRegistrants.notifyRegistrants"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :cond_a
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_9

    .line 793
    const-string/jumbo v10, "cdma.icc.operator.mcc"

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 806
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "operatorNumeric":Ljava/lang/String;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 807
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 808
    .local v7, "localTemp":[Ljava/lang/String;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    .line 812
    const/4 v10, 0x0

    aget-object v10, v7, v10

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 813
    const/4 v10, 0x3

    aget-object v10, v7, v10

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 814
    const/4 v10, 0x4

    aget-object v10, v7, v10

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 816
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MDN: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " MIN: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 821
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "localTemp":[Ljava/lang/String;
    :sswitch_5
    const/4 v6, 0x1

    .line 823
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 824
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 826
    .local v1, "data":[B
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    .line 830
    array-length v10, v1

    const/4 v11, 0x0

    invoke-static {v1, v11, v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 832
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "iccid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 837
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[B
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 838
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1

    .line 839
    const-string/jumbo v10, "RuimRecords"

    const-string/jumbo v11, "RuimRecords update failed"

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v10, v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 847
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    const-string/jumbo v10, "RuimRecords"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Event not supported: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 852
    :sswitch_8
    const-string/jumbo v10, "Event EVENT_GET_SST_DONE Received"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 856
    :sswitch_9
    const/4 v6, 0x0

    .line 857
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 858
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    .line 859
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_0

    .line 865
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    const-string/jumbo v10, "handleMessage (EVENT_PHB_READY)"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 866
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    .line 868
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 869
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v10

    if-nez v10, :cond_b

    .line 870
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 872
    :cond_b
    iget-boolean v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    goto/16 :goto_0

    .line 877
    :sswitch_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleMessage (EVENT_CDMA_IMSI_READY_TO_QUERY) mImsi= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 878
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v11

    .line 879
    const/16 v12, 0x68

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 878
    invoke-interface {v10, v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 882
    :sswitch_c
    const-string/jumbo v10, "handleMessage (EVENT_CDMA_IMSI_READY_QUERY_DONE)"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 884
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 885
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_c

    .line 886
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception querying IMSI, Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 889
    :cond_c
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 892
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-lt v10, v11, :cond_d

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xf

    if-le v10, v11, :cond_e

    .line 893
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid IMSI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 894
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 896
    :cond_e
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 897
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IMSI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "xxxxxxxxx"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 899
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 900
    .local v8, "opeNumeric":Ljava/lang/String;
    if-eqz v8, :cond_10

    .line 901
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-gt v10, v11, :cond_10

    .line 902
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 905
    :cond_10
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_11

    .line 906
    const-string/jumbo v10, "cdma.icc.operator.mcc"

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_11
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimImsi:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 909
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimImsi:Ljava/lang/String;

    .line 910
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 911
    const-string/jumbo v10, "RuimRecords: mImsiReadyRegistrants.notifyRegistrants"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 913
    :cond_12
    iget v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    if-eqz v10, :cond_13

    .line 914
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    .line 941
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "opeNumeric":Ljava/lang/String;
    :cond_13
    :sswitch_d
    const/16 v2, 0x3e8

    .line 942
    .local v2, "delayMills":I
    sget-object v10, Lcom/android/internal/telephony/uicc/RuimRecords;->ICCRECORD_PROPERTY_ICCID:[Ljava/lang/String;

    iget v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhoneId:I

    aget-object v10, v10, v11

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 944
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Received EVENT_GET_ICCID, mPhoneId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhoneId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mIccId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 946
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 947
    const/16 v10, 0x65

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/internal/telephony/uicc/RuimRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 949
    :cond_14
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    const-string/jumbo v11, "N/A"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 950
    const-string/jumbo v10, ""

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 952
    :cond_15
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 960
    .end local v2    # "delayMills":I
    :sswitch_e
    const-string/jumbo v10, "handleMessage (EVENT_GET_CDMA_ECC_DONE)"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 962
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 963
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_16

    .line 965
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Get CDMA ecc with exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 969
    :cond_16
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 970
    .restart local v1    # "data":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    add-int/lit8 v10, v5, 0x2

    array-length v11, v1

    if-ge v10, v11, :cond_19

    .line 972
    const/4 v10, 0x3

    invoke-static {v1, v5, v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, "eccNum":Ljava/lang/String;
    if-eqz v3, :cond_17

    const-string/jumbo v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 976
    :cond_17
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEfEcc:Ljava/lang/String;

    .line 970
    add-int/lit8 v5, v5, 0x3

    goto :goto_3

    .line 973
    :cond_18
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEfEcc:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 974
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEfEcc:Ljava/lang/String;

    goto :goto_4

    .line 979
    .end local v3    # "eccNum":Ljava/lang/String;
    :cond_19
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CDMA mEfEcc is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 981
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->RUIMRECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    iget v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhoneId:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEfEcc:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 729
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_5
        0x6 -> :sswitch_1
        0xa -> :sswitch_4
        0xe -> :sswitch_6
        0x11 -> :sswitch_8
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x1f -> :sswitch_9
        0x65 -> :sswitch_d
        0x66 -> :sswitch_a
        0x67 -> :sswitch_b
        0x68 -> :sswitch_c
        0x69 -> :sswitch_e
    .end sparse-switch
.end method

.method public isGsmRadioAvailable()Z
    .locals 6

    .prologue
    .line 1495
    const/4 v1, 0x0

    .line 1496
    .local v1, "onOrOff":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " isGsmRadioAvailable mPhone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1497
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_0

    .line 1498
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 1499
    .local v3, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " isGsmRadioAvailable uiccCard:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1500
    if-eqz v3, :cond_0

    .line 1502
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 1503
    .local v2, "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " isGsmRadioAvailable uiccApplication:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1504
    if-eqz v2, :cond_0

    .line 1505
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1506
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " isGsmRadioAvailable iccRecords:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1507
    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isRadioAvailable()Z

    move-result v1

    .line 1513
    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v1    # "onOrOff":Z
    .end local v2    # "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "For SVLTE isGsmRadioAvailable? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1514
    return v1
.end method

.method public isPhbReady()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPhbReady(): cached mPhbReady = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "true"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1384
    const-string/jumbo v4, "false"

    .line 1385
    .local v4, "strPhbReady":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 1386
    .local v2, "strAllSimState":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 1387
    .local v3, "strCurSimState":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1388
    .local v0, "isSimLocked":Z
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    .line 1390
    .local v1, "phoneId":I
    sget-object v6, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v7

    aget-object v6, v6, v7

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1391
    const-string/jumbo v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1393
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1394
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1395
    .local v5, "values":[Ljava/lang/String;
    if-ltz v1, :cond_0

    array-length v6, v5

    if-ge v1, v6, :cond_0

    aget-object v6, v5, v1

    if-eqz v6, :cond_0

    .line 1396
    aget-object v3, v5, v1

    .line 1400
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "NETWORK_LOCKED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1401
    const-string/jumbo v6, "PIN_REQUIRED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1403
    .end local v0    # "isSimLocked":Z
    :goto_1
    const-string/jumbo v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    .line 1404
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    .line 1409
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPhbReady(): mPhbReady = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "true"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1410
    const-string/jumbo v7, ", strCurSimState = "

    .line 1409
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1412
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    return v6

    .line 1383
    .end local v1    # "phoneId":I
    .end local v2    # "strAllSimState":Ljava/lang/String;
    .end local v3    # "strCurSimState":Ljava/lang/String;
    .end local v4    # "strPhbReady":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "false"

    goto/16 :goto_0

    .line 1400
    .restart local v0    # "isSimLocked":Z
    .restart local v1    # "phoneId":I
    .restart local v2    # "strAllSimState":Ljava/lang/String;
    .restart local v3    # "strCurSimState":Ljava/lang/String;
    .restart local v4    # "strPhbReady":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1406
    .end local v0    # "isSimLocked":Z
    :cond_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    goto :goto_2

    .line 1409
    :cond_4
    const-string/jumbo v6, "false"

    goto :goto_3
.end method

.method public isProvisioned()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1206
    const-string/jumbo v0, "persist.radio.test-csim"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    return v3

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_1

    .line 1211
    return v2

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1216
    :cond_2
    return v2

    .line 1218
    :cond_3
    return v3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1315
    const-string/jumbo v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1320
    const-string/jumbo v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1037
    const-string/jumbo v6, "record load complete"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, "operator":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1044
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1045
    const-string/jumbo v7, "\'"

    .line 1044
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1046
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update icc_operator_numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1047
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update phoneid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1048
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1049
    const/4 v7, 0x2

    .line 1048
    if-ne v6, v7, :cond_0

    .line 1050
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1051
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    .line 1050
    invoke-virtual {v6, v7, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1056
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1057
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAllRecordsLoaded set mcc imsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1062
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1067
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1068
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    .line 1067
    invoke-virtual {v6, v7, v0}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 1075
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1076
    .local v4, "resource":Landroid/content/res/Resources;
    const v6, 0x1120095

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1077
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSimLanguage([B[B)V

    .line 1080
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 1081
    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v9, v9, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1080
    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1084
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1085
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v3

    .line 1086
    .local v3, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 1087
    .local v5, "subIds":[I
    if-eqz v5, :cond_5

    .line 1088
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    aget v8, v5, v10

    invoke-virtual {v6, v7, v8}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    .line 1036
    .end local v3    # "phoneId":I
    .end local v5    # "subIds":[I
    :cond_2
    :goto_3
    return-void

    .line 1054
    .end local v4    # "resource":Landroid/content/res/Resources;
    :cond_3
    const-string/jumbo v6, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1063
    :catch_0
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 1065
    .local v0, "countryCode":Ljava/lang/String;
    const-string/jumbo v6, "RuimRecords: Corrupt IMSI!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1072
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string/jumbo v6, "onAllRecordsLoaded empty imsi skipping setting mcc"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1090
    .restart local v3    # "phoneId":I
    .restart local v4    # "resource":Landroid/content/res/Resources;
    .restart local v5    # "subIds":[I
    :cond_5
    const-string/jumbo v6, "Cannot call setDisplayNumber: invalid subId"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 1097
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1096
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1024
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1027
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    if-eqz v0, :cond_1

    .line 1028
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    if-gez v0, :cond_0

    .line 1030
    const-string/jumbo v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 1031
    iput v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 309
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting0 mMncLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 256
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDispose:Z

    if-eqz v0, :cond_0

    .line 257
    const-string/jumbo v0, "resetRecords, reset operator numeric and name to null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 260
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDispose:Z

    .line 267
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 242
    return-void
.end method

.method public setPhbReady(Z)V
    .locals 3
    .param p1, "isReady"    # Z

    .prologue
    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPhbReady(): isReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1484
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    if-eq v1, p1, :cond_0

    .line 1485
    if-eqz p1, :cond_2

    const-string/jumbo v0, "true"

    .line 1486
    .local v0, "strPhbReady":Ljava/lang/String;
    :goto_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    .line 1487
    sget-object v1, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 1482
    .end local v0    # "strPhbReady":Ljava/lang/String;
    :cond_0
    return-void

    .line 1483
    :cond_1
    const-string/jumbo v1, "false"

    goto :goto_0

    .line 1485
    :cond_2
    const-string/jumbo v0, "false"

    .restart local v0    # "strPhbReady":Ljava/lang/String;
    goto :goto_1
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 297
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/android/internal/telephony/uicc/IccException;

    const-string/jumbo v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    .line 297
    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 299
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 300
    const-string/jumbo v0, "method setVoiceMailNumber is not implemented"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 1225
    const-string/jumbo v0, "RuimRecords:setVoiceMessageWaiting - NOP for CDMA"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RuimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    const-string/jumbo v1, " m_ota_commited"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string/jumbo v1, " mMyMobileNumber="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "xxxx"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, " mMin2Min1="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string/jumbo v1, " mPrlVersion="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string/jumbo v1, " mEFpl="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, " mEFli="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, " mCsimSpnDisplayCondition="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, " mMdn="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string/jumbo v1, " mMin="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, " mHomeSystemId="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, " mHomeNetworkId="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
