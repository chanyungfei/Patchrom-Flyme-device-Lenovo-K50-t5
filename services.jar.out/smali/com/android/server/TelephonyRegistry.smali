.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$Record;,
        Lcom/android/server/TelephonyRegistry$LogSSC;,
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$2;
    }
.end annotation


# static fields
.field static final CHECK_PHONE_STATE_PERMISSION_MASK:I = 0xe0

.field private static final DBG:Z = true

.field private static final DBG_LOC:Z = false

.field static final ENFORCE_PHONE_STATE_PERMISSION_MASK:I = 0x400c

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_UPDATE_PHONE_SUB_ID_MAPPING:I = 0x3

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PRECISE_PHONE_STATE_PERMISSION_MASK:I = 0x1800

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z = true


# instance fields
.field private hasNotifySubscriptionInfoChangedOccurred:Z

.field private logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackgroundCallState:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCarrierNetworkChangeState:Z

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

.field private mConnectedApns:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:[I

.field private mDataConnectionApn:[Ljava/lang/String;

.field private mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

.field private mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionPossible:[Z

.field private mDataConnectionReason:[Ljava/lang/String;

.field private mDataConnectionState:[I

.field private mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mForegroundCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:[Z

.field private mNumPhones:I

.field private mOtaspMode:I

.field private mPreciseCallState:Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mSubIdMapping:[I

.field private mVoLteServiceState:Landroid/telephony/VoLteServiceState;

.field private next:I


# direct methods
.method static synthetic -get0(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/TelephonyRegistry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/TelephonyRegistry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/TelephonyRegistry;I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->onUpdatePhoneSubIdMapping()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 313
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 144
    iput-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    .line 181
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 183
    iput-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 185
    new-instance v3, Landroid/telephony/VoLteServiceState;

    invoke-direct {v3}, Landroid/telephony/VoLteServiceState;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 187
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 189
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 191
    new-instance v3, Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-direct {v3}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    .line 193
    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    .line 195
    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 197
    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    .line 199
    new-instance v3, Landroid/telephony/PreciseCallState;

    invoke-direct {v3}, Landroid/telephony/PreciseCallState;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 201
    iput-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 204
    new-instance v3, Landroid/telephony/PreciseDataConnectionState;

    invoke-direct {v3}, Landroid/telephony/PreciseDataConnectionState;-><init>()V

    .line 203
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 227
    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 272
    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1944
    const/4 v3, 0x5

    new-array v3, v3, [Lcom/android/server/TelephonyRegistry$LogSSC;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    .line 1945
    iput v5, p0, Lcom/android/server/TelephonyRegistry;->next:I

    .line 314
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 316
    .local v1, "location":Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 317
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 320
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 322
    .local v2, "numPhones":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    add-int/lit8 v2, v2, 0x1

    .line 326
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TelephonyRegistor: ctor numPhones="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 327
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 328
    new-array v3, v2, [Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    .line 329
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 330
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 331
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 332
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 333
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 334
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 335
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 336
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 337
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    .line 338
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    .line 339
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    .line 340
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 341
    new-array v3, v2, [Landroid/os/Bundle;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 342
    new-array v3, v2, [Landroid/net/LinkProperties;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    .line 343
    new-array v3, v2, [Landroid/net/NetworkCapabilities;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    .line 344
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 345
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 348
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v3, v0

    .line 349
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v5, v3, v0

    .line 350
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v5, v3, v0

    .line 351
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v6, v3, v0

    .line 352
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v3, v0

    .line 353
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v0

    .line 354
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v0

    .line 355
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v5, v3, v0

    .line 356
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v5, v3, v0

    .line 357
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    aput-boolean v5, v3, v0

    .line 358
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v3, v0

    .line 359
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v3, v0

    .line 360
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v3, v0

    .line 361
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 362
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    aput v4, v3, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    if-eqz v1, :cond_2

    .line 368
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 369
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 374
    :cond_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 313
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 1629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1631
    .local v2, "ident":J
    if-nez p1, :cond_2

    .line 1632
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1642
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    .line 1644
    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1643
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1645
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1646
    const-string/jumbo v4, "incoming_number"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1651
    :cond_0
    const/4 v4, -0x1

    if-eq p3, v4, :cond_1

    .line 1652
    const-string/jumbo v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    const-string/jumbo v4, "subscription"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1658
    :cond_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1659
    const-string/jumbo v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 1658
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1660
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1661
    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    .line 1662
    const/16 v7, 0x33

    .line 1660
    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1628
    return-void

    .line 1634
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1636
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1638
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 1639
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    throw v4
.end method

.method private broadcastCallStateChangedForPhoneInfo(ILjava/lang/String;III)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "phoneType"    # I
    .param p5, "subId"    # I

    .prologue
    .line 1587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1589
    .local v2, "ident":J
    if-nez p1, :cond_2

    .line 1590
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1600
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    .line 1602
    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1601
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    const-string/jumbo v4, "phone"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    const-string/jumbo v4, "phoneType"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1607
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1608
    const-string/jumbo v4, "incoming_number"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1613
    :cond_0
    const/4 v4, -0x1

    if-eq p5, v4, :cond_1

    .line 1614
    const-string/jumbo v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1615
    const-string/jumbo v4, "subscription"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1620
    :cond_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1621
    const-string/jumbo v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 1620
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1622
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1623
    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    .line 1624
    const/16 v7, 0x33

    .line 1622
    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1586
    return-void

    .line 1592
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1594
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1596
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 1597
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    throw v4
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "phoneId"    # I

    .prologue
    .line 1725
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1726
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1727
    const-string/jumbo v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1728
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1729
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1731
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1724
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "subId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1696
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1697
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    .line 1698
    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1697
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    if-nez p2, :cond_0

    .line 1700
    const-string/jumbo v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1702
    :cond_0
    if-eqz p3, :cond_1

    .line 1703
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    :cond_1
    if-eqz p6, :cond_2

    .line 1706
    const-string/jumbo v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1707
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1708
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1709
    const-string/jumbo v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1712
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 1713
    const-string/jumbo v2, "networkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1715
    :cond_3
    if-eqz p8, :cond_4

    const-string/jumbo v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1717
    :cond_4
    const-string/jumbo v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    const-string/jumbo v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    const-string/jumbo v2, "subscription"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1720
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1692
    return-void
.end method

.method private broadcastLteAccessStratumChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1667
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.LTE_ACCESS_STRATUM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "lteAccessStratumState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1670
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    .line 1669
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1666
    return-void
.end method

.method private broadcastPreciseCallStateChanged(IIIII)V
    .locals 4
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I
    .param p4, "disconnectCause"    # I
    .param p5, "preciseDisconnectCause"    # I

    .prologue
    .line 1736
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PRECISE_CALL_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1737
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ringing_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1738
    const-string/jumbo v1, "foreground_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1739
    const-string/jumbo v1, "background_state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1740
    const-string/jumbo v1, "disconnect_cause"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1741
    const-string/jumbo v1, "precise_disconnect_cause"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1742
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1743
    const-string/jumbo v3, "android.permission.READ_PRECISE_PHONE_STATE"

    .line 1742
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1735
    return-void
.end method

.method private broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "failCause"    # Ljava/lang/String;

    .prologue
    .line 1749
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1750
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1751
    const-string/jumbo v1, "networkType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1752
    if-eqz p5, :cond_0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1753
    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v1, "apnType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1754
    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1755
    :cond_2
    if-eqz p6, :cond_3

    .line 1756
    const-string/jumbo v1, "linkProperties"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1758
    :cond_3
    if-eqz p7, :cond_4

    const-string/jumbo v1, "failCause"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    :cond_4
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1761
    const-string/jumbo v3, "android.permission.READ_PRECISE_PHONE_STATE"

    .line 1760
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1748
    return-void
.end method

.method private broadcastPsNetworkTypeChanged(I)V
    .locals 4
    .param p1, "nwType"    # I

    .prologue
    .line 1674
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PS_NETWORK_TYPE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1675
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "psNetworkType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1676
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1677
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    .line 1676
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1673
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 8
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subId"    # I

    .prologue
    .line 1531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1533
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1540
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1542
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1543
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1547
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 1548
    .local v4, "phoneId":I
    invoke-static {v1, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1550
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1530
    return-void

    .line 1534
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "phoneId":I
    :catch_0
    move-exception v5

    .line 1537
    .local v5, "re":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1536
    .end local v5    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 1537
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1536
    throw v6
.end method

.method private broadcastSharedDefaultApnStateChanged(Z)V
    .locals 4
    .param p1, "isSharedDefaultApn"    # Z

    .prologue
    .line 1681
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SHARED_DEFAULT_APN_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "sharedDefaultApn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1683
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1684
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    .line 1683
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1680
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 8
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subId"    # I

    .prologue
    .line 1554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1556
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SIG_STR"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1564
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1566
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1567
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1570
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 1571
    .local v5, "phoneId":I
    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1573
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1553
    return-void

    .line 1557
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "phoneId":I
    :catch_0
    move-exception v1

    .line 1560
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1559
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 1560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1559
    throw v6
.end method

.method private canReadPhoneState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 699
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 700
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 699
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 703
    const/4 v1, 0x1

    return v1

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 706
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    .line 705
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 707
    .local v0, "canReadPhoneState":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 708
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x33

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 710
    return v4

    .line 705
    .end local v0    # "canReadPhoneState":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "canReadPhoneState":Z
    goto :goto_0

    .line 712
    :cond_2
    return v0
.end method

.method private checkListenerPermission(I)V
    .locals 5
    .param p1, "events"    # I

    .prologue
    const/4 v4, 0x0

    .line 1804
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 1805
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1806
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1805
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    :cond_0
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_1

    .line 1811
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1812
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1811
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    :cond_1
    and-int/lit16 v1, p1, 0x400c

    if-eqz v1, :cond_2

    .line 1818
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1819
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v3, 0x0

    .line 1818
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1828
    :cond_2
    :goto_0
    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_3

    .line 1829
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1830
    const-string/jumbo v2, "android.permission.READ_PRECISE_PHONE_STATE"

    .line 1829
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_3
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 1835
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1836
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 1835
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    :cond_4
    return-void

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1824
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    .line 1823
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkNotifyPermission()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1783
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1773
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1774
    const/4 v1, 0x1

    return v1

    .line 1776
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1777
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1776
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1777
    const-string/jumbo v2, ", uid="

    .line 1776
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1776
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1779
    const/4 v1, 0x0

    return v1
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .prologue
    .line 2024
    iget v0, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 2026
    .local v0, "events":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 2028
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkPossibleMissNotify: onServiceStateChanged state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2029
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p2

    .line 2028
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2030
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2031
    new-instance v5, Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p2

    invoke-direct {v5, v6}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 2030
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    :cond_0
    :goto_0
    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_1

    .line 2039
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v4, p2

    .line 2041
    .local v3, "signalStrength":Landroid/telephony/SignalStrength;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkPossibleMissNotify: onSignalStrengthsChanged SS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2043
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, v3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2049
    .end local v3    # "signalStrength":Landroid/telephony/SignalStrength;
    :cond_1
    :goto_1
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_3

    .line 2051
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 2054
    .local v2, "gsmSignalStrength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkPossibleMissNotify: onSignalStrengthChanged SS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2057
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v2, v5, :cond_2

    const/4 v2, -0x1

    .end local v2    # "gsmSignalStrength":I
    :cond_2
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2064
    :cond_3
    :goto_2
    const/16 v4, 0x400

    invoke-direct {p0, p1, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2070
    :try_start_3
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2076
    :cond_4
    :goto_3
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_5

    .line 2079
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkPossibleMissNotify: onMessageWaitingIndicatorChanged phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2080
    const-string/jumbo v5, " mwi="

    .line 2079
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2080
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, p2

    .line 2079
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2082
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2083
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, p2

    .line 2082
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2089
    :cond_5
    :goto_4
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_6

    .line 2092
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkPossibleMissNotify: onCallForwardingIndicatorChanged phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2093
    const-string/jumbo v5, " cfi="

    .line 2092
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2093
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, p2

    .line 2092
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2095
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2096
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, p2

    .line 2095
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2102
    :cond_6
    :goto_5
    const/16 v4, 0x10

    invoke-direct {p0, p1, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2106
    :try_start_6
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, p2

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 2112
    :cond_7
    :goto_6
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_8

    .line 2115
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkPossibleMissNotify: onDataConnectionStateChanged(mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2116
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, p2

    .line 2115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2117
    const-string/jumbo v5, ", mDataConnectionNetworkType="

    .line 2115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2117
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v5, v5, p2

    .line 2115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2118
    const-string/jumbo v5, ")"

    .line 2115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2120
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, p2

    .line 2121
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v6, v6, p2

    .line 2120
    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 2023
    :cond_8
    :goto_7
    return-void

    .line 2032
    :catch_0
    move-exception v1

    .line 2033
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2044
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2045
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2059
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 2060
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2071
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 2072
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2084
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    .line 2085
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2097
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v1

    .line 2098
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2107
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_6
    move-exception v1

    .line 2108
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2122
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_7
    move-exception v1

    .line 2123
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method private enforceCarrierPrivilege()V
    .locals 8

    .prologue
    .line 1788
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1789
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1790
    .local v2, "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 1791
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v6

    .line 1792
    const/4 v7, 0x1

    .line 1791
    if-ne v6, v7, :cond_0

    .line 1793
    return-void

    .line 1790
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1797
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Carrier Privilege Permission Denial: from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1798
    const-string/jumbo v5, ", uid="

    .line 1797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1798
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1799
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1800
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1765
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    return-void

    .line 1769
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->enforceCarrierPrivilege()V

    .line 1764
    return-void
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .prologue
    .line 717
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v0, v0, p2

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 5

    .prologue
    .line 1841
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1842
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRemoveListLocked: mRemoveList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1843
    if-lez v2, :cond_1

    .line 1844
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1845
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1847
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1840
    .end local v1    # "b$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .locals 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .param p5, "subId"    # I

    .prologue
    .line 505
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 507
    .local v3, "callerUserId":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "listen: E pkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " events=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 508
    const-string/jumbo v12, " notifyNow="

    .line 507
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 508
    const-string/jumbo v12, " subId="

    .line 507
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 508
    const-string/jumbo v12, " myUserId="

    .line 507
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 509
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 507
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 509
    const-string/jumbo v12, " callerUserId="

    .line 507
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 512
    if-eqz p3, :cond_16

    .line 514
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 516
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x400c

    if-eqz v11, :cond_0

    .line 518
    :try_start_0
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 519
    const-string/jumbo v12, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v13, 0x0

    .line 518
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v12

    .line 534
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 535
    .local v2, "b":Landroid/os/IBinder;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 536
    .local v1, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_12

    .line 537
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/TelephonyRegistry$Record;

    .line 538
    .local v10, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v11, :cond_11

    .line 548
    :goto_1
    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 549
    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 550
    iput v3, v10, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    .line 551
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x40ec

    if-eqz v11, :cond_13

    const/4 v8, 0x1

    .line 553
    .local v8, "isPhoneStateEvent":Z
    :goto_2
    if-eqz v8, :cond_14

    invoke-direct/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->canReadPhoneState(Ljava/lang/String;)Z

    move-result v11

    :goto_3
    iput-boolean v11, v10, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    .line 556
    invoke-static/range {p5 .. p5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v11

    if-nez v11, :cond_15

    .line 557
    const v11, 0x7fffffff

    iput v11, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 561
    :goto_4
    iget v11, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v11

    iput v11, v10, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 563
    iget v9, v10, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 564
    .local v9, "phoneId":I
    move/from16 v0, p3

    iput v0, v10, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 566
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "listen:  Register r="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " r.subId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " phoneId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 568
    const-string/jumbo v11, "listen"

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->toStringLogSSC(Ljava/lang/String;)V

    .line 569
    if-eqz p4, :cond_10

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_10

    .line 570
    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_1

    .line 572
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "listen: call onSSC state="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v13, v13, v9

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 573
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 574
    new-instance v13, Landroid/telephony/ServiceState;

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, v9

    invoke-direct {v13, v14}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 573
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    :cond_1
    :goto_5
    and-int/lit8 v11, p3, 0x2

    if-eqz v11, :cond_3

    .line 581
    :try_start_3
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v6

    .line 583
    .local v6, "gsmSignalStrength":I
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v13, 0x63

    if-ne v6, v13, :cond_2

    const/4 v6, -0x1

    .end local v6    # "gsmSignalStrength":I
    :cond_2
    invoke-interface {v11, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    :cond_3
    :goto_6
    and-int/lit8 v11, p3, 0x4

    if-eqz v11, :cond_4

    .line 591
    :try_start_4
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 592
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v13, v13, v9

    .line 591
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 597
    :cond_4
    :goto_7
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_5

    .line 599
    :try_start_5
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 600
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v13, v13, v9

    .line 599
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 605
    :cond_5
    :goto_8
    const/16 v11, 0x10

    :try_start_6
    invoke-direct {p0, v10, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v11

    if-eqz v11, :cond_6

    .line 609
    :try_start_7
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 610
    new-instance v13, Landroid/os/Bundle;

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v14, v14, v9

    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 609
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 615
    :cond_6
    :goto_9
    and-int/lit8 v11, p3, 0x20

    if-eqz v11, :cond_7

    .line 617
    :try_start_8
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v13, v13, v9

    .line 618
    invoke-direct {p0, v10, v9}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v14

    .line 617
    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 623
    :cond_7
    :goto_a
    and-int/lit8 v11, p3, 0x40

    if-eqz v11, :cond_8

    .line 625
    :try_start_9
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v13, v13, v9

    .line 626
    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v14, v14, v9

    .line 625
    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 631
    :cond_8
    :goto_b
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_9

    .line 633
    :try_start_a
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v13, v13, v9

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 638
    :cond_9
    :goto_c
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_a

    .line 640
    :try_start_b
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v13, v13, v9

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 645
    :cond_a
    :goto_d
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_b

    .line 647
    :try_start_c
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 652
    :cond_b
    :goto_e
    const/16 v11, 0x400

    :try_start_d
    invoke-direct {p0, v10, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v11

    if-eqz v11, :cond_c

    .line 656
    :try_start_e
    iget-object v13, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v13, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 661
    :cond_c
    :goto_f
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x2000

    if-eqz v11, :cond_d

    .line 663
    :try_start_f
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 668
    :cond_d
    :goto_10
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_e

    .line 670
    :try_start_10
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 675
    :cond_e
    :goto_11
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x1000

    if-eqz v11, :cond_f

    .line 677
    :try_start_11
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 678
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 677
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 683
    :cond_f
    :goto_12
    const/high16 v11, 0x10000

    and-int v11, v11, p3

    if-eqz v11, :cond_10

    .line 685
    :try_start_12
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_10
    :goto_13
    monitor-exit v12

    .line 504
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v7    # "i":I
    .end local v8    # "isPhoneStateEvent":Z
    .end local v9    # "phoneId":I
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_14
    return-void

    .line 522
    :catch_0
    move-exception v4

    .line 523
    .local v4, "e":Ljava/lang/SecurityException;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const/16 v13, 0x33

    move-object/from16 v0, p1

    invoke-virtual {v11, v13, v12, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    .line 525
    return-void

    .line 536
    .end local v4    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v7    # "i":I
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 542
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_12
    :try_start_13
    new-instance v10, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$Record;)V

    .line 543
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object v2, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 544
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    const-string/jumbo v11, "listen: add new record"

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    .line 530
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v7    # "i":I
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 551
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v7    # "i":I
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_13
    const/4 v8, 0x0

    .restart local v8    # "isPhoneStateEvent":Z
    goto/16 :goto_2

    .line 553
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 559
    :cond_15
    :try_start_14
    move/from16 v0, p5

    iput v0, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto/16 :goto_4

    .line 575
    .restart local v9    # "phoneId":I
    :catch_1
    move-exception v5

    .line 576
    .local v5, "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_5

    .line 585
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    .line 586
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_6

    .line 593
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v5

    .line 594
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 601
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_4
    move-exception v5

    .line 602
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 611
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v5

    .line 612
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 619
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_6
    move-exception v5

    .line 620
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 627
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_7
    move-exception v5

    .line 628
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_b

    .line 634
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_8
    move-exception v5

    .line 635
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_c

    .line 641
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_9
    move-exception v5

    .line 642
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_d

    .line 648
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_a
    move-exception v5

    .line 649
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_e

    .line 657
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_b
    move-exception v5

    .line 658
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_f

    .line 664
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v5

    .line 665
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_10

    .line 671
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_d
    move-exception v5

    .line 672
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_11

    .line 679
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_e
    move-exception v5

    .line 680
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_12

    .line 686
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v5

    .line 687
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_13

    .line 693
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v5    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i":I
    .end local v8    # "isPhoneStateEvent":Z
    .end local v9    # "phoneId":I
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_16
    const-string/jumbo v11, "listen: Unregister"

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 694
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_14
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1922
    const-string/jumbo v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    return-void
.end method

.method private logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I
    .param p4, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1948
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1949
    :cond_0
    return-void

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 1952
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    new-instance v3, Lcom/android/server/TelephonyRegistry$LogSSC;

    invoke-direct {v3, v4}, Lcom/android/server/TelephonyRegistry$LogSSC;-><init>(Lcom/android/server/TelephonyRegistry$LogSSC;)V

    aput-object v3, v0, v2

    .line 1954
    :cond_2
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1955
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1956
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    aget-object v0, v0, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry$LogSSC;->set(Landroid/text/format/Time;Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    .line 1957
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 1958
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->next:I

    .line 1947
    :cond_3
    return-void
.end method

.method private onUpdatePhoneSubIdMapping()V
    .locals 4

    .prologue
    .line 1882
    const-string/jumbo v1, "onUpdatePhoneSubIdMapping E"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1883
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    monitor-enter v2

    .line 1884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    aput v3, v1, v0

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update phone id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " is mapping to sub id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    .line 1889
    const-string/jumbo v1, "onUpdatePhoneSubIdMapping X"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1881
    return-void

    .line 1883
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 721
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 722
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 723
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 724
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v3, p1, :cond_0

    .line 726
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 727
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove: binder="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "r.callingPackage"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 728
    const-string/jumbo v5, "r.callback"

    .line 727
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 728
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 727
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 730
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 731
    return-void

    .line 723
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    .line 720
    return-void

    .line 721
    .end local v0    # "i":I
    .end local v2    # "recordCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private toStringLogSSC(Ljava/lang/String;)V
    .locals 3
    .param p1, "prompt"    # Ljava/lang/String;

    .prologue
    .line 1963
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 1964
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": logSSC is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1962
    :goto_0
    return-void

    .line 1963
    :cond_1
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->next:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1967
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": logSSC.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1968
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    .line 1969
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 1971
    const/4 v0, 0x0

    .line 1974
    :cond_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$LogSSC;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1975
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 1976
    const/4 v0, 0x0

    .line 1978
    :cond_4
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->next:I

    if-ne v0, v1, :cond_3

    .line 1979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": ----------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .prologue
    .line 1853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1854
    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    .line 1856
    .local v3, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1857
    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    if-ne v4, v2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    .line 1859
    .end local v3    # "valid":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateEventsAndUserLocked: valid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1860
    const-string/jumbo v5, " r.callerUserId="

    .line 1859
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1860
    iget v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    .line 1859
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1860
    const-string/jumbo v5, " foregroundUser="

    .line 1859
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1861
    const-string/jumbo v5, " r.events="

    .line 1859
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1861
    iget v5, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 1859
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1861
    const-string/jumbo v5, " events="

    .line 1859
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1866
    return v3

    .line 1857
    .restart local v3    # "valid":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1863
    .end local v2    # "foregroundUser":I
    .end local v3    # "valid":Z
    :catchall_0
    move-exception v4

    .line 1864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1863
    throw v4
.end method

.method private validatePhoneId(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1870
    if-ltz p1, :cond_2

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge p1, v1, :cond_2

    const/4 v0, 0x1

    .line 1872
    .local v0, "valid":Z
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1873
    if-nez v0, :cond_0

    sget v1, Landroid/telephony/SubscriptionManager;->LTE_DC_PHONE_ID:I

    if-ne p1, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 1876
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validatePhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1877
    return v0

    .line 1870
    .end local v0    # "valid":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "valid":Z
    goto :goto_0

    .line 1873
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .prologue
    .line 391
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 393
    .local v2, "callerUserId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "listen oscl: E pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " myUserId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 394
    const-string/jumbo v8, " callerUserId="

    .line 393
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 394
    const-string/jumbo v8, " callback="

    .line 393
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 395
    const-string/jumbo v8, " callback.asBinder="

    .line 393
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 395
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 393
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 399
    :try_start_0
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 400
    const-string/jumbo v8, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 401
    const-string/jumbo v9, "addOnSubscriptionsChangedListener"

    .line 399
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v8

    .line 419
    :try_start_1
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 420
    .local v1, "b":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 421
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 422
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;

    .line 423
    .local v6, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v7, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v7, :cond_1

    .line 433
    :goto_1
    iput-object p2, v6, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 434
    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 435
    iput v2, v6, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    .line 436
    const/4 v7, 0x0

    iput v7, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 437
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    .line 439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listen oscl:  Register r="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 442
    iget-boolean v7, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 444
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listen oscl: send to r="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 445
    iget-object v7, v6, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v7}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listen oscl: sent to r="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit v8

    .line 390
    return-void

    .line 403
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v5    # "i":I
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v4

    .line 404
    .local v4, "e":Ljava/lang/SecurityException;
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 405
    const-string/jumbo v8, "android.permission.READ_PHONE_STATE"

    .line 406
    const-string/jumbo v9, "addOnSubscriptionsChangedListener"

    .line 404
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x33

    invoke-virtual {v7, v9, v8, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 410
    return-void

    .line 421
    .end local v4    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v5    # "i":I
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 427
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    :try_start_3
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$Record;)V

    .line 428
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object v1, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 429
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const-string/jumbo v7, "listen oscl: add new record"

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 416
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v5    # "i":I
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 447
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v5    # "i":I
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_1
    move-exception v3

    .line 448
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listen oscl: remote exception sending to r="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " e="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 449
    iget-object v7, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v7}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 452
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v7, "listen oscl: hasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1490
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1493
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1492
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1493
    const-string/jumbo v5, ", uid="

    .line 1492
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1492
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    return-void

    .line 1496
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1497
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1498
    .local v3, "recordCount":I
    const-string/jumbo v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Phone Id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mCallState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mCallIncomingNumber="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mServiceState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mSignalStrength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mMessageWaiting="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mCallForwarding="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDataActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDataConnectionState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDataConnectionPossible="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDataConnectionReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDataConnectionApn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDataConnectionLinkProperties="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDataConnectionNetworkCapabilities="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1514
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aget-object v6, v6, v0

    .line 1513
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mCellLocation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mCellInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1518
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDcRtInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registrations: count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1521
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1496
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    .end local v3    # "recordCount":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "i":I
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    .restart local v3    # "recordCount":I
    :cond_2
    monitor-exit v5

    .line 1489
    return-void
.end method

.method public getPhoneSubIdMapping(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1894
    const/4 v1, 0x0

    .line 1895
    .local v1, "tmpPhoneId":I
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    monitor-enter v3

    .line 1896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 1897
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 1898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " finds phone id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1899
    return v0

    .line 1896
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1904
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1906
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1907
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v1

    .line 1908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPhoneSubIdMapping mapping phone ID for IRAT, tmpPhoneId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1910
    :cond_2
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v1, v2, :cond_3

    .line 1911
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    aput p1, v2, v1

    .line 1912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find in map, update phone id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " is mapping to sub id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1913
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    aget v4, v4, v1

    .line 1912
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v3

    .line 1918
    return v1

    .line 1895
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method idMatch(II)Z
    .locals 3
    .param p1, "rSubId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1997
    const/4 v0, 0x0

    .line 1998
    .local v0, "rlt":Z
    if-gez p2, :cond_1

    .line 2000
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 2001
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 2000
    if-ne v1, v2, :cond_0

    .line 2002
    const/16 v1, -0xa

    if-eq p2, v1, :cond_0

    .line 2003
    const/16 v1, -0xb

    if-eq p2, v1, :cond_0

    .line 2004
    const/4 v0, 0x1

    .line 2006
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "idMatch: rlt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2007
    return v0

    .line 2009
    :cond_1
    const v1, 0x7fffffff

    if-ne p1, v1, :cond_3

    .line 2010
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, v1, :cond_2

    .line 2011
    const/4 v0, 0x1

    .line 2018
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "idMatch: rlt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2020
    return v0

    .line 2014
    :cond_3
    if-ne p1, p2, :cond_2

    .line 2015
    const/4 v0, 0x1

    goto :goto_0
.end method

.method idMatch(III)Z
    .locals 3
    .param p1, "rSubId"    # I
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1985
    if-gez p2, :cond_1

    .line 1987
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    if-ne v2, p3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1989
    :cond_1
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_3

    .line 1990
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1992
    :cond_3
    if-ne p1, p2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    .prologue
    .line 493
    const v1, 0x7fffffff

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 492
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pkgForDebug"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z

    .prologue
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    .line 500
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 499
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 1046
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 1045
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z

    .prologue
    .line 1050
    const-string/jumbo v4, "notifyCallForwardingChanged()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1051
    return-void

    .line 1054
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCallForwardingChangedForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1055
    const-string/jumbo v5, " cfi="

    .line 1054
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1057
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1058
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1059
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1060
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v4, v1

    .line 1061
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1063
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x8

    .line 1062
    invoke-virtual {v2, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1064
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1062
    if-eqz v4, :cond_1

    .line 1066
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1057
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "phoneId":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1073
    .restart local v1    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 1049
    return-void
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 738
    const-string/jumbo v4, "notifyCallState()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 739
    return-void

    .line 743
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCallState: state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " incomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 746
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 747
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 748
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 749
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_1

    .line 751
    :try_start_1
    iget-boolean v4, v2, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    if-eqz v4, :cond_2

    move-object v1, p2

    .line 752
    .local v1, "incomingNumberOrEmpty":Ljava/lang/String;
    :goto_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 753
    .end local v1    # "incomingNumberOrEmpty":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 754
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 746
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 751
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    const-string/jumbo v1, ""
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v1    # "incomingNumberOrEmpty":Ljava/lang/String;
    goto :goto_1

    .line 758
    .end local v1    # "incomingNumberOrEmpty":Ljava/lang/String;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    .line 761
    const/4 v4, -0x1

    .line 760
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    .line 737
    return-void
.end method

.method public notifyCallStateForPhoneInfo(IIIILjava/lang/String;)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "subId"    # I
    .param p4, "state"    # I
    .param p5, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 769
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    return-void

    .line 773
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCallStateForPhoneInfo: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " phoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, " subId="

    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, " state="

    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, " incomingNumber="

    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 777
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p4, v0, p1

    .line 779
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p5, v0, p1

    .line 780
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    .line 781
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    iget v0, v7, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v0, p3, :cond_1

    .line 783
    iget v0, v7, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_1

    .line 785
    :try_start_1
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v0, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 786
    :catch_0
    move-exception v6

    .line 787
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 776
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 792
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    move-object v0, p0

    move v1, p4

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    .line 794
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChangedForPhoneInfo(ILjava/lang/String;III)V

    .line 768
    return-void
.end method

.method public notifyCallStateForSubscriber(IILjava/lang/String;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 799
    const-string/jumbo v5, "notifyCallState()"

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 800
    return-void

    .line 803
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyCallStateForSubscriber: subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 804
    const-string/jumbo v6, " state="

    .line 803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 804
    const-string/jumbo v6, " incomingNumber="

    .line 803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 806
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 807
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 808
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 809
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p2, v5, v2

    .line 810
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p3, v5, v2

    .line 811
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 812
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 813
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v5, p1, :cond_1

    .line 814
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v7, 0x7fffffff

    if-eq v5, v7, :cond_1

    .line 816
    :try_start_1
    invoke-direct {p0, v3, v2}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "incomingNumberOrEmpty":Ljava/lang/String;
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p2, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 818
    .end local v1    # "incomingNumberOrEmpty":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 819
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 806
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 824
    .restart local v2    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 826
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    .line 798
    return-void
.end method

.method public notifyCarrierNetworkChange(Z)V
    .locals 6
    .param p1, "active"    # Z

    .prologue
    .line 935
    const-string/jumbo v3, "notifyCarrierNetworkChange()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyCarrierNetworkChange: active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 941
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 942
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 943
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 945
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x10000

    .line 944
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 947
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 941
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 953
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 934
    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 958
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 957
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .locals 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 962
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string/jumbo v4, "notifyCellInfo()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 963
    return-void

    .line 966
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCellInfoForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 967
    const-string/jumbo v5, " cellInfo="

    .line 966
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 970
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 971
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 972
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 973
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 975
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x400

    invoke-direct {p0, v2, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 976
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 975
    if-eqz v4, :cond_1

    .line 981
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 970
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "phoneId":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 988
    .restart local v1    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 961
    return-void
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1277
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 1276
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1282
    const-string/jumbo v5, " cellLocation="

    .line 1281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1283
    const-string/jumbo v4, "notifyCellLocation()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1284
    return-void

    .line 1287
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1288
    const-string/jumbo v5, " cellLocation="

    .line 1287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1290
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1291
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1292
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1293
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p2, v4, v1

    .line 1294
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1295
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x10

    invoke-direct {p0, v2, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1296
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1295
    if-eqz v4, :cond_1

    .line 1302
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1290
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "phoneId":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1309
    .restart local v1    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 1280
    return-void
.end method

.method public notifyDataActivity(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1078
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    .line 1077
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .prologue
    .line 1082
    const-string/jumbo v4, "notifyDataActivity()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1083
    return-void

    .line 1085
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1086
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1087
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1088
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v4, v1

    .line 1089
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1090
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1092
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1085
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "phoneId":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1099
    .restart local v1    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 1081
    return-void
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z

    .prologue
    .line 1106
    const v1, 0x7fffffff

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 1105
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1236
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 1235
    return-void
.end method

.method public notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "subId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1242
    const-string/jumbo v4, "notifyDataConnectionFailed()"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1243
    return-void

    .line 1246
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyDataConnectionFailedForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1247
    const-string/jumbo v5, " reason="

    .line 1246
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1247
    const-string/jumbo v5, " apnType="

    .line 1246
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1249
    const/4 v13, -0x1

    .line 1250
    .local v13, "phoneId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1251
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->getPhoneSubIdMapping(I)I

    move-result v13

    .line 1252
    new-instance v4, Landroid/telephony/PreciseDataConnectionState;

    .line 1254
    const-string/jumbo v8, ""

    const-string/jumbo v11, ""

    .line 1253
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 1254
    const/4 v10, 0x0

    move-object/from16 v7, p3

    move-object/from16 v9, p2

    .line 1252
    invoke-direct/range {v4 .. v11}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/TelephonyRegistry$Record;

    .line 1257
    .local v14, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x1000

    .line 1256
    invoke-virtual {v14, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1258
    iget v4, v14, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1, v13}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1256
    if-eqz v4, :cond_1

    .line 1260
    :try_start_1
    iget-object v4, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1261
    :catch_0
    move-exception v12

    .line 1262
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1250
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v15    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v16

    throw v4

    .line 1266
    .restart local v15    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v16

    .line 1268
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1269
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result p1

    .line 1271
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1273
    const-string/jumbo v8, ""

    const-string/jumbo v11, ""

    .line 1272
    const/4 v5, -0x1

    .line 1273
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v9, p2

    .line 1272
    invoke-direct/range {v4 .. v11}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1241
    return-void
.end method

.method public notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 17
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "isDataConnectivityPossible"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "apnType"    # Ljava/lang/String;
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p9, "networkType"    # I
    .param p10, "roaming"    # Z

    .prologue
    .line 1114
    const-string/jumbo v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1115
    return-void

    .line 1118
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDataConnectionForSubscriber E: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1119
    const-string/jumbo v3, " state="

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1119
    const-string/jumbo v3, " isDataConnectivityPossible="

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1120
    const-string/jumbo v3, " reason=\'"

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1121
    const-string/jumbo v3, "\' apn=\'"

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1121
    const-string/jumbo v3, "\' apnType="

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1121
    const-string/jumbo v3, " networkType="

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1122
    const-string/jumbo v3, " mRecords.size()="

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1125
    const/4 v14, -0x1

    .line 1126
    .local v14, "phoneId":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1127
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->getPhoneSubIdMapping(I)I

    move-result v14

    .line 1128
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1129
    const/4 v13, 0x0

    .line 1130
    .local v13, "modified":Z
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v14

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v14

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v2, v2, v14

    move/from16 v0, p2

    if-eq v2, v0, :cond_1

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput p2, v2, v14

    .line 1135
    const/4 v13, 0x1

    .line 1149
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    aput-boolean p3, v2, v14

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    aput-object p4, v2, v14

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aput-object p7, v2, v14

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aput-object p8, v2, v14

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v2, v2, v14

    move/from16 v0, p9

    if-eq v2, v0, :cond_2

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput p9, v2, v14

    .line 1156
    const/4 v13, 0x1

    .line 1160
    :cond_2
    const-string/jumbo v2, "notifyDataConnectionForSubscriber: handle onDataConnectionStateChanged"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1162
    if-eqz v13, :cond_6

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataConnectionStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v3, v3, v14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1165
    const-string/jumbo v3, ", "

    .line 1164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v3, v3, v14

    .line 1164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1165
    const-string/jumbo v3, ")"

    .line 1164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "r$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/TelephonyRegistry$Record;

    .line 1169
    .local v15, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x40

    .line 1168
    invoke-virtual {v15, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1170
    iget v2, v15, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1, v14}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1168
    if-eqz v2, :cond_3

    .line 1172
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notify data connection state changed on sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataConnectionStateChanged E: PKG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1177
    iget-object v3, v15, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1179
    iget-object v2, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v3, v3, v14

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v4, v4, v14

    .line 1179
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1182
    const-string/jumbo v2, "onDataConnectionStateChanged X"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1184
    :catch_0
    move-exception v12

    .line 1185
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1126
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "modified":Z
    .end local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v16    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2

    .line 1139
    .restart local v13    # "modified":Z
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v14

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput p2, v2, v14

    .line 1142
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1189
    .restart local v16    # "r$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1194
    .end local v16    # "r$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v2, "notifyDataConnectionForSubscriber: handle PreciseDataConnectionState"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1196
    new-instance v2, Landroid/telephony/PreciseDataConnectionState;

    .line 1197
    const-string/jumbo v9, ""

    move/from16 v3, p2

    move/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    .line 1196
    invoke-direct/range {v2 .. v9}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "r$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/TelephonyRegistry$Record;

    .line 1201
    .restart local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x1000

    .line 1200
    invoke-virtual {v15, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1202
    iget v2, v15, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1, v14}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 1200
    if-eqz v2, :cond_7

    .line 1205
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreciseDataConnectionStateChanged E: PKG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1206
    iget-object v3, v15, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1208
    iget-object v2, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    .line 1210
    const-string/jumbo v2, "onDataConnectionStateChanged X"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1212
    :catch_1
    move-exception v12

    .line 1213
    .restart local v12    # "ex":Landroid/os/RemoteException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1218
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "modified":Z
    .end local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v16    # "r$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v10

    .line 1223
    const-string/jumbo v2, "notifyDataConnectionForSubscriber: broadcast intent"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p1

    .line 1226
    invoke-direct/range {v2 .. v11}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V

    .line 1229
    const-string/jumbo v9, ""

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    .line 1228
    invoke-direct/range {v2 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1231
    const-string/jumbo v2, "notifyDataConnectionForSubscriber X"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1113
    return-void
.end method

.method public notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 6
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 993
    const-string/jumbo v3, "notifyDataConnectionRealTimeInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 994
    return-void

    .line 997
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 998
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    .line 999
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1001
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x2000

    .line 1000
    invoke-direct {p0, v1, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1007
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 997
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1013
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 992
    return-void
.end method

.method public notifyDisconnectCause(II)V
    .locals 10
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .prologue
    .line 1362
    const-string/jumbo v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    return-void

    .line 1365
    :cond_0
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1366
    :try_start_0
    new-instance v0, Landroid/telephony/PreciseCallState;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 1367
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move v4, p1

    move v5, p2

    .line 1366
    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1368
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    .line 1369
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    invoke-virtual {v7, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    :try_start_1
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v6

    .line 1373
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1365
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 1377
    .restart local v8    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v9

    .line 1379
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 1380
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 1379
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    .line 1361
    return-void
.end method

.method public notifyLteAccessStratumChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1455
    const-string/jumbo v0, "notifyLteAccessStratumChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    return-void

    .line 1460
    :cond_0
    const-string/jumbo v0, "notifyLteAccessStratumChanged: broadcast intent"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastLteAccessStratumChanged(Ljava/lang/String;)V

    .line 1454
    return-void
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z

    .prologue
    .line 1019
    const-string/jumbo v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1020
    return-void

    .line 1023
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMessageWaitingChangedForSubscriberPhoneID: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1024
    const-string/jumbo v4, " mwi="

    .line 1023
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1026
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1027
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1028
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v3, p1

    .line 1029
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1031
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x4

    .line 1030
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1032
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1030
    if-eqz v3, :cond_1

    .line 1034
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1026
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1041
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 1018
    return-void
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    .prologue
    .line 1429
    const-string/jumbo v3, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1430
    return-void

    .line 1433
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1434
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1436
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyOemHookRawEventForSubscriber:  r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1439
    const v3, 0x8000

    .line 1438
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1440
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-eq v3, p1, :cond_2

    .line 1441
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_1

    .line 1443
    :cond_2
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1433
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1449
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 1428
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .param p1, "otaspMode"    # I

    .prologue
    .line 1314
    const-string/jumbo v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1315
    return-void

    .line 1317
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1318
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1319
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1320
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1322
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1317
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1328
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 1313
    return-void
.end method

.method public notifyPreciseCallState(III)V
    .locals 11
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I

    .prologue
    const/4 v10, -0x1

    .line 1334
    const-string/jumbo v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    return-void

    .line 1337
    :cond_0
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1338
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    .line 1339
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 1340
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    .line 1341
    new-instance v0, Landroid/telephony/PreciseCallState;

    .line 1343
    const/4 v4, -0x1

    .line 1344
    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1341
    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1345
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    .line 1346
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    invoke-virtual {v7, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1348
    :try_start_1
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1349
    :catch_0
    move-exception v6

    .line 1350
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1337
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 1354
    .restart local v8    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v10

    move v5, v10

    .line 1356
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    .line 1333
    return-void
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;

    .prologue
    .line 1385
    const-string/jumbo v0, "notifyPreciseDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    return-void

    .line 1388
    :cond_0
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1389
    :try_start_0
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    .line 1390
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1391
    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v7, p4

    .line 1389
    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1392
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/TelephonyRegistry$Record;

    .line 1394
    .local v9, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    .line 1393
    invoke-virtual {v9, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1396
    :try_start_1
    iget-object v0, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1397
    :catch_0
    move-exception v8

    .line 1398
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1388
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v10    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 1402
    .restart local v10    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v11

    .line 1404
    const/4 v1, -0x1

    .line 1405
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v7, p4

    .line 1404
    invoke-direct/range {v0 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1384
    return-void
.end method

.method public notifyPsNetworkTypeChanged(I)V
    .locals 1
    .param p1, "nwType"    # I

    .prologue
    .line 1466
    const-string/jumbo v0, "notifyPsNetworkTypeChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1467
    return-void

    .line 1471
    :cond_0
    const-string/jumbo v0, "notifyPsNetworkTypeChanged: broadcast intent"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastPsNetworkTypeChanged(I)V

    .line 1465
    return-void
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 830
    const-string/jumbo v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 831
    return-void

    .line 834
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 836
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyServiceStateForSubscriber: subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 837
    const-string/jumbo v5, " state="

    .line 836
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 839
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 840
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v3, p1

    .line 841
    const-string/jumbo v3, "notifyServiceStateForSubscriber"

    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/TelephonyRegistry;->logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    .line 842
    const-string/jumbo v3, "notifyServiceStateForSubscriber"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->toStringLogSSC(Ljava/lang/String;)V

    .line 844
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 849
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2}, Lcom/android/server/TelephonyRegistry;->idMatch(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 849
    if-eqz v3, :cond_1

    .line 853
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyServiceStateForSubscriber: callback.onSSC r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 854
    const-string/jumbo v5, " subId="

    .line 853
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 854
    const-string/jumbo v5, " phoneId="

    .line 853
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 855
    const-string/jumbo v5, " state="

    .line 853
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 857
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 834
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 864
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 866
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 868
    invoke-direct {p0, p3, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 829
    return-void
.end method

.method public notifySharedDefaultApnStateChanged(Z)V
    .locals 1
    .param p1, "isSharedDefaultApn"    # Z

    .prologue
    .line 1477
    const-string/jumbo v0, "notifySharedDefaultApnStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1478
    return-void

    .line 1482
    :cond_0
    const-string/jumbo v0, "notifySharedDefaultApnStateChanged: broadcast intent"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1484
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSharedDefaultApnStateChanged(Z)V

    .line 1476
    return-void
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 872
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V

    .line 871
    return-void
.end method

.method public notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 877
    const-string/jumbo v6, "notifySignalStrength()"

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 878
    return-void

    .line 881
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifySignalStrengthForSubscriber: subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 882
    const-string/jumbo v7, " signalStrength="

    .line 881
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 883
    const-string/jumbo v6, "notifySignalStrengthForSubscriber"

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->toStringLogSSC(Ljava/lang/String;)V

    .line 885
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 886
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 887
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 888
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifySignalStrengthForSubscriber: valid phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 889
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p2, v6, v2

    .line 890
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 896
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v6, 0x100

    .line 895
    invoke-virtual {v3, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 897
    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v6, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 895
    if-eqz v6, :cond_2

    .line 900
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifySignalStrengthForSubscriber: callback.onSsS r="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 901
    const-string/jumbo v8, " subId="

    .line 900
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 901
    const-string/jumbo v8, " phoneId="

    .line 900
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 902
    const-string/jumbo v8, " ss="

    .line 900
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 904
    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v8, Landroid/telephony/SignalStrength;

    invoke-direct {v8, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v6, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    :cond_2
    :goto_1
    const/4 v6, 0x2

    :try_start_2
    invoke-virtual {v3, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 910
    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v6, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 909
    if-eqz v6, :cond_1

    .line 912
    :try_start_3
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 913
    .local v1, "gsmSignalStrength":I
    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v5, -0x1

    .line 915
    .local v5, "ss":I
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifySignalStrengthForSubscriber: callback.onSS r="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 916
    const-string/jumbo v8, " subId="

    .line 915
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 916
    const-string/jumbo v8, " phoneId="

    .line 915
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 917
    const-string/jumbo v8, " gsmSS="

    .line 915
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 917
    const-string/jumbo v8, " ss="

    .line 915
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 919
    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 920
    .end local v1    # "gsmSignalStrength":I
    .end local v5    # "ss":I
    :catch_0
    move-exception v0

    .line 921
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 885
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 905
    .restart local v2    # "phoneId":I
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v4    # "r$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 906
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_5
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 913
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "gsmSignalStrength":I
    :cond_3
    move v5, v1

    .restart local v5    # "ss":I
    goto :goto_2

    .line 926
    .end local v1    # "gsmSignalStrength":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    .end local v5    # "ss":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifySignalStrengthForSubscriber: invalid phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 928
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v7

    .line 930
    invoke-direct {p0, p2, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    .line 876
    return-void
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 6

    .prologue
    .line 466
    const-string/jumbo v3, "notifySubscriptionInfoChanged:"

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 467
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 468
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v3, :cond_0

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 470
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 469
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 472
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    .line 473
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 474
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 475
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySubscriptionInfoChanged: call osc to r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 478
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySubscriptionInfoChanged: done osc to r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySubscriptionInfoChanged: RemoteException r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 467
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 486
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 465
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 7
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 1409
    const-string/jumbo v3, "notifyVoLteServiceStateChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1410
    return-void

    .line 1412
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1413
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 1414
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1415
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x4000

    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1417
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1418
    new-instance v5, Landroid/telephony/VoLteServiceState;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    invoke-direct {v5, v6}, Landroid/telephony/VoLteServiceState;-><init>(Landroid/telephony/VoLteServiceState;)V

    .line 1417
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1412
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1424
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 1408
    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 1
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .prologue
    .line 460
    const-string/jumbo v0, "listen oscl: Unregister"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 461
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 459
    return-void
.end method

.method public systemRunning()V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 377
    return-void
.end method
