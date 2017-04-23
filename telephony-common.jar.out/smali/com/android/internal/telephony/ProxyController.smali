.class public Lcom/android/internal/telephony/ProxyController;
.super Ljava/lang/Object;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ProxyController$1;,
        Lcom/android/internal/telephony/ProxyController$2;,
        Lcom/android/internal/telephony/ProxyController$3;,
        Lcom/android/internal/telephony/ProxyController$4;
    }
.end annotation


# static fields
.field private static final EVENT_APPLY_RC_RESPONSE:I = 0x3

.field private static final EVENT_FINISH_RC_RESPONSE:I = 0x4

.field private static final EVENT_NOTIFICATION_RC_CHANGED:I = 0x1

.field private static final EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final EVENT_START_RC_RESPONSE:I = 0x2

.field private static final EVENT_TIMEOUT:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "ProxyController"

.field private static final RC_RETRY_CAUSE_AIRPLANE_MODE:I = 0x5

.field private static final RC_RETRY_CAUSE_CAPABILITY_SWITCHING:I = 0x2

.field private static final RC_RETRY_CAUSE_IN_CALL:I = 0x3

.field private static final RC_RETRY_CAUSE_NONE:I = 0x0

.field private static final RC_RETRY_CAUSE_RADIO_UNAVAILABLE:I = 0x4

.field private static final RC_RETRY_CAUSE_WORLD_MODE_SWITCHING:I = 0x1

.field private static final SET_RC_STATUS_APPLYING:I = 0x3

.field private static final SET_RC_STATUS_FAIL:I = 0x5

.field private static final SET_RC_STATUS_IDLE:I = 0x0

.field private static final SET_RC_STATUS_STARTED:I = 0x2

.field private static final SET_RC_STATUS_STARTING:I = 0x1

.field private static final SET_RC_STATUS_SUCCESS:I = 0x4

.field private static final SET_RC_TIMEOUT_WAITING_MSEC:I = 0xafc8

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentLogicalModemIds:[Ljava/lang/String;

.field private mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private mHandler:Landroid/os/Handler;

.field private mHasRegisterPhoneStateReceiver:Z

.field private mHasRegisterWorldModeReceiver:Z

.field private mIsCapSwitching:Z

.field private mNewLogicalModemIds:[Ljava/lang/String;

.field private mNewRadioAccessFamily:[I

.field mNextRafs:[Landroid/telephony/RadioAccessFamily;

.field private mOldRadioAccessFamily:[I

.field private mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRadioAccessFamilyStatusCounter:I

.field private mRadioCapabilitySessionId:I

.field private mSetRadioAccessFamilyStatus:[I

.field private mSetRafRetryCause:I

.field private mTransactionFailed:Z

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

.field private mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

.field private mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWorldModeReceiver:Landroid/content/BroadcastReceiver;

.field private onExceptionCount:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/ProxyController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/ProxyController;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onRetryWhenRadioAvailable(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onTimeoutRadioCapability(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p3, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 127
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 141
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    .line 142
    iput-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 146
    iput v5, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 162
    new-instance v3, Lcom/android/internal/telephony/ProxyController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$1;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 630
    new-instance v3, Lcom/android/internal/telephony/ProxyController$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$2;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    .line 1124
    new-instance v3, Lcom/android/internal/telephony/ProxyController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$3;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1149
    new-instance v3, Lcom/android/internal/telephony/ProxyController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$4;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    const-string/jumbo v3, "Constructor - Enter"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 193
    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 194
    iput-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 196
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DctController;->makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 197
    new-instance v3, Lcom/android/internal/telephony/UiccPhoneBookController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    .line 198
    new-instance v3, Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    .line 199
    new-instance v3, Lcom/android/internal/telephony/UiccSmsController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/UiccSmsController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

    .line 200
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    .line 201
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    .line 202
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    .line 203
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    .line 204
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    .line 207
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 208
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "ProxyController"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 209
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 213
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v1

    .line 215
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    .line 214
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v3, "Constructor - Exit"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private clearTransaction()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1005
    const-string/jumbo v1, "clearTransaction"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1006
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    .line 1007
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 1008
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearTransaction: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " status=IDLE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1010
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 1011
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 1012
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 1013
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1016
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1017
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1004
    return-void

    .line 1007
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private completeRadioCapabilityTransaction()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 949
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFinishRadioCapabilityResponse: success="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v6, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 950
    iget-boolean v6, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-nez v6, :cond_4

    .line 951
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v3, "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 953
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v5

    .line 954
    .local v5, "raf":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "radioAccessFamily["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "]="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 955
    new-instance v4, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v4, v1, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    .line 956
    .local v4, "phoneRC":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 949
    .end local v1    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    .end local v4    # "phoneRC":Landroid/telephony/RadioAccessFamily;
    .end local v5    # "raf":I
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 958
    .restart local v1    # "i":I
    .restart local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "rafs"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 963
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 966
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 983
    .end local v1    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateIccid([Lcom/android/internal/telephony/Phone;)V

    .line 985
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 987
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v6, :cond_3

    .line 988
    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 989
    const-string/jumbo v6, "has next capability switch request,trigger it"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 991
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 992
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :cond_2
    :goto_3
    iput v7, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 998
    iput-object v9, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 946
    :cond_3
    return-void

    .line 968
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .restart local v2    # "intent":Landroid/content/Intent;
    iput-boolean v7, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 973
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    goto :goto_2

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V

    goto :goto_3
.end method

.method private doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z
    .locals 13
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 580
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 582
    iput-boolean v12, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    .line 583
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v11

    .line 584
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioCapability: new request session id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 587
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_2

    .line 588
    aget-object v0, p1, v8

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v1

    .line 589
    .local v1, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    const/16 v0, 0xa

    if-ne v1, v0, :cond_0

    .line 592
    const/4 v1, 0x0

    .line 594
    :cond_0
    const/16 v0, 0xb

    if-ne v1, v0, :cond_1

    .line 596
    const/4 v1, 0x1

    .line 599
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioCapability: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " status=STARTING"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    aput v2, v0, v1

    .line 602
    aget-object v0, p1, v8

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v10

    .line 606
    .local v10, "requestedRaf":I
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aput v10, v0, v1

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->getLogicalModemIdFromRaf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioCapability: mOldRadioAccessFamily["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 613
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v2, v2, v1

    .line 612
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioCapability: mNewRadioAccessFamily["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 615
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v2, v2, v1

    .line 614
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 618
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v0, v1

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    .line 619
    const/4 v3, 0x1

    .line 622
    const/4 v6, 0x0

    .line 623
    const/4 v7, 0x2

    move-object v0, p0

    .line 616
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .end local v1    # "phoneId":I
    .end local v10    # "requestedRaf":I
    :cond_2
    monitor-exit v11

    .line 627
    return v12

    .line 583
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProxyController;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 152
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 155
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method private getLogicalModemIdFromRaf(I)Ljava/lang/String;
    .locals 3
    .param p1, "raf"    # I

    .prologue
    .line 1077
    const/4 v0, 0x0

    .line 1079
    .local v0, "modemUuid":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1080
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1081
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getModemUuId()Ljava/lang/String;

    move-result-object v0

    .line 1085
    .end local v0    # "modemUuid":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 1079
    .restart local v0    # "modemUuid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private issueFinish(I)V
    .locals 9
    .param p1, "sessionId"    # I

    .prologue
    .line 923
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v8

    .line 924
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "issueFinish: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 926
    const-string/jumbo v2, " mTransactionFailed="

    .line 925
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 926
    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 925
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 927
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v0, v1

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    .line 934
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_1

    const/4 v6, 0x2

    .line 931
    :goto_1
    const/4 v3, 0x4

    .line 936
    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    .line 928
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 937
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_0

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "issueFinish: phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " status: FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 935
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v8

    .line 921
    return-void

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1089
    const-string/jumbo v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1093
    const-string/jumbo v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void
.end method

.method private onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 753
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v5, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/RadioCapability;

    .line 754
    .local v5, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 755
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 756
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v6, v7, :cond_5

    .line 757
    :cond_0
    if-nez v5, :cond_4

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    if-nez v6, :cond_4

    .line 759
    iput v9, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 760
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_1

    .line 761
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 764
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_3

    .line 766
    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 768
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 769
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-interface {v6, v7, v11, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    :cond_2
    const-string/jumbo v6, "onApplyRadioCapabilityResponse: Retry later due to RADIO_NOT_AVAILABLE"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    .line 776
    .end local v2    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 777
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 779
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 784
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 773
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onApplyRadioCapabilityResponse: exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 774
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 773
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 781
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onApplyRadioCapabilityResponse: Ignore session="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 782
    const-string/jumbo v7, " rc="

    .line 781
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 786
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onApplyRadioCapabilityResponse: rc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 787
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_a

    .line 788
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v7

    .line 789
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onApplyRadioCapabilityResponse: Error response session="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v5}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v3

    .line 791
    .local v3, "id":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 792
    const/16 v6, 0xa

    if-ne v3, v6, :cond_6

    .line 794
    const/4 v3, 0x0

    .line 796
    :cond_6
    const/16 v6, 0xb

    if-ne v3, v6, :cond_7

    .line 798
    const/4 v3, 0x1

    .line 801
    :cond_7
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_8

    .line 802
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 805
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_9

    .line 807
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 809
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v3

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 810
    const-string/jumbo v6, "onApplyRadioCapabilityResponse: Retry later due to modem off"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    .line 815
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onApplyRadioCapabilityResponse: phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " status=FAIL"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 816
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v8, 0x5

    aput v8, v6, v3

    .line 817
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 752
    .end local v3    # "id":I
    :goto_4
    return-void

    .line 812
    .restart local v3    # "id":I
    :cond_9
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onApplyRadioCapabilityResponse: exception="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 813
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 812
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 788
    .end local v3    # "id":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 820
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onApplyRadioCapabilityResponse: Valid start expecting notification rc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 829
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    .line 830
    .local v1, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_1

    .line 831
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 832
    const-string/jumbo v3, " rc="

    .line 831
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 833
    return-void

    .line 835
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v3

    .line 836
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: rc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v4, :cond_2

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 840
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 839
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 840
    const-string/jumbo v4, " rc="

    .line 839
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 841
    return-void

    .line 844
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    .line 845
    .local v0, "id":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 846
    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    .line 848
    const/4 v0, 0x0

    .line 850
    :cond_3
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    .line 852
    const/4 v0, 0x1

    .line 855
    :cond_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 856
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 857
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " status=FAIL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 858
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x5

    aput v4, v2, v0

    .line 859
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 868
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 869
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v2, :cond_6

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: APPLY URC success="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 871
    iget-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 870
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 872
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit v3

    .line 828
    return-void

    .line 861
    :cond_7
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " status=SUCCESS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 862
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x4

    aput v4, v2, v0

    .line 864
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->retryAttach(I)V

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/PhoneProxy;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 835
    .end local v0    # "id":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private onRetryWhenRadioAvailable(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRetryWhenRadioAvailable,mSetRafRetryCause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1115
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1117
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 670
    iget-object v12, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v12

    .line 671
    :try_start_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 672
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartRadioCapabilityResponse got exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 676
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 678
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 679
    return-void

    .line 681
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/RadioCapability;

    .line 682
    .local v11, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v0

    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v0, v4, :cond_2

    .line 683
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartRadioCapabilityResponse: Ignore session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 684
    const-string/jumbo v2, " rc="

    .line 683
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    .line 685
    return-void

    .line 687
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 688
    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v9

    .line 689
    .local v9, "id":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 690
    const/16 v0, 0xa

    if-ne v9, v0, :cond_3

    .line 692
    const/4 v9, 0x0

    .line 694
    :cond_3
    const/16 v0, 0xb

    if-ne v9, v0, :cond_4

    .line 696
    const/4 v9, 0x1

    .line 699
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartRadioCapabilityResponse: Error response session="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " status=FAIL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x5

    aput v4, v0, v9

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 709
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v0, :cond_5

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartRadioCapabilityResponse: success="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 723
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_8

    .line 726
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit v12

    .line 669
    return-void

    .line 705
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " status=STARTED"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x2

    aput v4, v0, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 670
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "id":I
    .end local v11    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .restart local v8    # "ar":Landroid/os/AsyncResult;
    .restart local v9    # "id":I
    .restart local v11    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_7
    move v0, v3

    .line 722
    goto :goto_1

    .line 729
    :cond_8
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 730
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 733
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 735
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v4, v0, v1

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    .line 734
    const/4 v3, 0x2

    .line 737
    const/4 v6, 0x0

    .line 738
    const/4 v7, 0x3

    move-object v0, p0

    .line 731
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " status=APPLYING"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private onTimeoutRadioCapability(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 899
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_0

    .line 900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RadioCapability timeout: Ignore msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 901
    const-string/jumbo v3, "!= mRadioCapabilitySessionId="

    .line 900
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 901
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 900
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 902
    return-void

    .line 905
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v3

    .line 907
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RadioCapability timeout: mSetRadioAccessFamilyStatus["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 909
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v4, v4, v0

    .line 908
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 914
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 916
    .local v1, "uniqueDifferentId":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 917
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 898
    return-void

    .line 905
    .end local v1    # "uniqueDifferentId":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerPhoneStateReceiver()V
    .locals 3

    .prologue
    .line 1198
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1199
    const-string/jumbo v1, "registerPhoneStateReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1200
    return-void

    .line 1202
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1203
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1204
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    .line 1197
    return-void
.end method

.method private registerWorldModeReceiver()V
    .locals 3

    .prologue
    .line 1180
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1181
    const-string/jumbo v1, "registerWorldModeReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1182
    return-void

    .line 1184
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1185
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1186
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 1179
    return-void
.end method

.method private resetRadioAccessFamilyStatusCounter()V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 1022
    return-void
.end method

.method private sendCapabilityFailBroadcast()V
    .locals 2

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1175
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1173
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "rcPhase"    # I
    .param p4, "radioFamily"    # I
    .param p5, "logicalModemId"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "eventId"    # I

    .prologue
    .line 1029
    if-eqz p5, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1030
    :cond_0
    const-string/jumbo p5, "modem_sys3"

    .line 1033
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 1035
    .local v0, "requestRC":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    .line 1036
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1035
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    .line 1027
    return-void
.end method

.method private unRegisterPhoneStateReceiver()V
    .locals 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1209
    const-string/jumbo v0, "unRegisterPhoneStateReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1210
    return-void

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    .line 1207
    return-void
.end method

.method private unRegisterWorldModeReceiver()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1191
    const-string/jumbo v0, "unRegisterWorldModeReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1192
    return-void

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 1189
    return-void
.end method


# virtual methods
.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .param p1, "sub"    # I
    .param p2, "dataCleanedUpMsg"    # Landroid/os/Message;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 234
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1098
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :goto_0
    return-void

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableDataConnectivity(I)V
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(Z)V

    .line 229
    return-void
.end method

.method public getMaxRafSupported()I
    .locals 5

    .prologue
    .line 1042
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    new-array v3, v4, [I

    .line 1043
    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    .line 1044
    .local v1, "maxNumRafBit":I
    const/4 v2, 0x1

    .line 1046
    .local v2, "maxRaf":I
    const/4 v0, 0x0

    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 1047
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v3, v0

    .line 1048
    aget v4, v3, v0

    if-ge v1, v4, :cond_0

    .line 1049
    aget v1, v3, v0

    .line 1050
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    .line 1046
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    :cond_1
    return v2
.end method

.method public getMinRafSupported()I
    .locals 5

    .prologue
    .line 1060
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    new-array v3, v4, [I

    .line 1061
    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    .line 1062
    .local v1, "minNumRafBit":I
    const/4 v2, 0x1

    .line 1064
    .local v2, "minRaf":I
    const/4 v0, 0x0

    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 1065
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v3, v0

    .line 1066
    if-eqz v1, :cond_0

    aget v4, v3, v0

    if-le v1, v4, :cond_1

    .line 1067
    :cond_0
    aget v1, v3, v0

    .line 1068
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    .line 1064
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1071
    :cond_2
    return v2
.end method

.method public getRadioAccessFamily(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 278
    const/4 v0, 0x1

    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v0

    return v0
.end method

.method public isCapabilitySwitching()Z
    .locals 1

    .prologue
    .line 1110
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    return v0
.end method

.method public isDataDisconnected(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 259
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 261
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 263
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    return v2

    .line 266
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 882
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 883
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v2, :cond_1

    .line 884
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishRadioCapabilityResponse: Ignore session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 885
    const-string/jumbo v2, " rc="

    .line 884
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 886
    return-void

    .line 888
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 889
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " onFinishRadioCapabilityResponse mRadioAccessFamilyStatusCounter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 890
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 889
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 891
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 892
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v1, :cond_2

    .line 893
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 881
    return-void

    .line 888
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 243
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 245
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 242
    :cond_0
    return-void
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 23
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    .line 293
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 295
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 296
    const-string/jumbo v19, "world mode switching"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->registerWorldModeReceiver()V

    .line 300
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 301
    const/16 v19, 0x1

    return v19

    .line 302
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->unRegisterWorldModeReceiver()V

    .line 305
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 306
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 310
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 311
    const-string/jumbo v19, "Length of input rafs must equal to total phone count"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 312
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "Length of input rafs must equal to total phone count"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 315
    :cond_3
    const-string/jumbo v19, "gsm.gcf.testmode"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 317
    const-string/jumbo v19, "skip switching because FTA mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 318
    const/16 v19, 0x1

    return v19

    .line 321
    :cond_4
    const-string/jumbo v19, "persist.radio.simswitch.emmode"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_5

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 323
    const-string/jumbo v19, "skip switching because EM disable mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 324
    const/16 v19, 0x1

    return v19

    .line 327
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v19

    if-eqz v19, :cond_7

    .line 329
    const-string/jumbo v19, "setCapability in calling, fail to set RAT for phones"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->registerPhoneStateReceiver()V

    .line 333
    :cond_6
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 334
    const/16 v19, 0x0

    return v19

    .line 335
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 336
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->unRegisterPhoneStateReceiver()V

    .line 338
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 339
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 344
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 345
    const-string/jumbo v20, "airplane_mode_on"

    const/16 v21, 0x0

    .line 343
    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 346
    .local v4, "airplaneMode":I
    if-lez v4, :cond_9

    .line 348
    const-string/jumbo v19, "airplane mode is on, fail to set RAT for phones"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 349
    const/16 v19, 0x5

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 350
    const/16 v19, 0x0

    return v19

    .line 353
    :cond_9
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_c

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v19

    if-nez v19, :cond_a

    .line 356
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    const/16 v22, 0x0

    invoke-interface/range {v19 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setCapability fail,Phone"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " is not available"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 359
    const/16 v19, 0x0

    return v19

    .line 360
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 361
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setCapability,Phone"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " is available"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 363
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 364
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 353
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 368
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 370
    const-string/jumbo v19, "keep it and return,because capability swithing"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 371
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 372
    const/16 v19, 0x1

    return v19

    .line 373
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 374
    const-string/jumbo v19, "setCapability, mIsCapSwitching is not switching, can switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 375
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 376
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 379
    :cond_e
    const-string/jumbo v19, "persist.radio.simswitch"

    const-string/jumbo v20, "1"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 378
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 381
    .local v18, "switchStatus":I
    const/4 v6, 0x0

    .line 382
    .local v6, "bIsboth3G":Z
    const/4 v5, 0x0

    .line 383
    .local v5, "bIsMajorPhone":Z
    const/4 v12, 0x0

    .line 384
    .local v12, "newMajorPhoneId":I
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_16

    .line 385
    const/4 v5, 0x0

    .line 386
    const-string/jumbo v19, "ro.mtk_lte_support"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 387
    aget-object v19, p1, v7

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x4000

    move/from16 v19, v0

    .line 388
    const/16 v20, 0x4000

    .line 387
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 389
    const/4 v5, 0x1

    .line 397
    :cond_f
    :goto_2
    if-eqz v5, :cond_15

    .line 398
    aget-object v19, p1, v7

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v12

    .line 399
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 400
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v12, v0, :cond_10

    .line 402
    const/4 v12, 0x0

    .line 404
    :cond_10
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v12, v0, :cond_11

    .line 406
    const/4 v12, 0x1

    .line 409
    :cond_11
    add-int/lit8 v19, v18, -0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_13

    .line 410
    const-string/jumbo v19, "no change, skip setRadioCapability"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 411
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 412
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 414
    const/16 v19, 0x1

    return v19

    .line 392
    :cond_12
    aget-object v19, p1, v7

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v19

    and-int/lit8 v19, v19, 0x8

    .line 393
    const/16 v20, 0x8

    .line 392
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 394
    const/4 v5, 0x1

    goto :goto_2

    .line 416
    :cond_13
    if-eqz v6, :cond_14

    .line 417
    const-string/jumbo v19, "set more than one 3G phone, fail"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 418
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "input parameter is incorrect"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 420
    :cond_14
    const/4 v6, 0x1

    .line 384
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 424
    :cond_16
    if-nez v6, :cond_17

    .line 425
    const-string/jumbo v19, "input parameter is incorrect - no 3g phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 426
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "input parameter is incorrect - no 3g phone"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 430
    :cond_17
    const-string/jumbo v19, "ro.mtk_external_sim_support"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 431
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v10

    .line 432
    .local v10, "mainPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v19

    if-eqz v19, :cond_19

    .line 433
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v10, v0, :cond_18

    .line 434
    const/4 v10, 0x0

    .line 436
    :cond_18
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v10, v0, :cond_19

    .line 437
    const/4 v10, 0x1

    .line 441
    :cond_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 442
    const-string/jumbo v19, "gsm.external.sim.enabled"

    const-string/jumbo v20, "0"

    .line 441
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v10, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, "isVsimEnabledOnMain":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 445
    const-string/jumbo v19, "gsm.external.sim.inserted"

    const-string/jumbo v20, "0"

    .line 444
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v10, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 447
    .local v11, "mainPhoneIdSimType":Ljava/lang/String;
    const-string/jumbo v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const-string/jumbo v19, "2"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 448
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "vsim enabled, can\'t switch to another sim!"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 453
    .end local v9    # "isVsimEnabledOnMain":Ljava/lang/String;
    .end local v10    # "mainPhoneId":I
    .end local v11    # "mainPhoneIdSimType":Ljava/lang/String;
    :cond_1a
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v19

    if-eqz v19, :cond_23

    .line 454
    const/4 v8, 0x0

    .line 455
    .local v8, "isSvlteModeSwitching":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSvlteModeSwitching()Z

    move-result v8

    .line 456
    .local v8, "isSvlteModeSwitching":Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setRadioCapability,and isSvlteModeSwitching = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 457
    if-eqz v8, :cond_1b

    .line 459
    const-string/jumbo v19, "setRadioCapability,ModeSwitching wait for next trigger"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 460
    const/16 v19, 0x1

    return v19

    .line 463
    :cond_1b
    const/16 v16, 0x0

    .line 464
    .local v16, "simState":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v15

    .line 465
    .local v15, "simNum":I
    const/16 v17, 0x0

    .line 466
    .local v17, "skipCapabilitySwitch":Z
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v15, :cond_1f

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v16

    .line 468
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c

    .line 469
    const/16 v19, 0x3

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e

    .line 472
    :cond_1c
    :goto_4
    const/16 v17, 0x1

    .line 473
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setRadioCapability,sim is locked simState = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 466
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 470
    :cond_1e
    const/16 v19, 0x4

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c

    .line 471
    const/16 v19, 0x6

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    goto :goto_4

    .line 476
    :cond_1f
    if-eqz v17, :cond_20

    .line 477
    const-string/jumbo v19, "setRadioCapability,sim is locked wait for unlock trigger"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 478
    const/16 v19, 0x1

    return v19

    .line 480
    :cond_20
    const-string/jumbo v19, "ro.operator.optr"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "OPTR":Ljava/lang/String;
    const-string/jumbo v19, "ro.operator.seg"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "OPSEG":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "OPTR = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " OPSEG = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v19, "OP09"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    const-string/jumbo v19, "SEGDEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 485
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimContainsCdmaApp(I)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 486
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_21

    .line 487
    const-string/jumbo v19, "CDMA sim is inserted in slot1, skip sim switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 489
    const/16 v19, 0x1

    return v19

    .line 492
    :cond_21
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode()I

    move-result v19

    .line 493
    const/16 v20, 0x3

    .line 492
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_23

    .line 494
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_23

    .line 496
    const-string/jumbo v19, "ril.iccid.sim1"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 497
    .local v14, "sim1IccId":Ljava/lang/String;
    const-string/jumbo v19, "N/A"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_23

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 499
    const-string/jumbo v19, "want to switch 3/4G to GSMphone in SVLTE mode, skip it"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 500
    const/16 v19, 0x1

    return v19

    .line 506
    .end local v14    # "sim1IccId":Ljava/lang/String;
    :cond_22
    const-string/jumbo v19, "Non OP09 A project follow OM project rule"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 510
    .end local v2    # "OPSEG":Ljava/lang/String;
    .end local v3    # "OPTR":Ljava/lang/String;
    .end local v8    # "isSvlteModeSwitching":Z
    .end local v15    # "simNum":I
    .end local v16    # "simState":I
    .end local v17    # "skipCapabilitySwitch":Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 522
    const-string/jumbo v19, "should not be here...!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 523
    const/16 v19, 0x1

    return v19

    .line 512
    :pswitch_0
    const-string/jumbo v19, "do setRadioCapability"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    move-object/from16 v20, v0

    monitor-enter v20

    .line 530
    const/4 v7, 0x0

    :goto_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_25

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    move-object/from16 v19, v0

    aget v19, v19, v7

    if-eqz v19, :cond_24

    .line 533
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setRadioCapability: Phone["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v21, "] is not idle. Rejecting request."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    const/16 v19, 0x0

    monitor-exit v20

    return v19

    .line 515
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 516
    const-string/jumbo v19, "no change in op check, skip setRadioCapability"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 517
    const/16 v19, 0x1

    return v19

    .line 519
    :pswitch_2
    const-string/jumbo v19, "Sim status/info is not ready, skip setRadioCapability"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 520
    const/16 v19, 0x1

    return v19

    .line 530
    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_25
    monitor-exit v20

    .line 540
    const/4 v13, 0x1

    .line 541
    .local v13, "same":Z
    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_27

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v19

    aget-object v20, p1, v7

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_26

    .line 543
    const/4 v13, 0x0

    .line 541
    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 529
    .end local v13    # "same":Z
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 546
    .restart local v13    # "same":Z
    :cond_27
    if-eqz v13, :cond_28

    .line 548
    const-string/jumbo v19, "setRadioCapability: Already in requested configuration, nothing to do."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 550
    const/16 v19, 0x1

    return v19

    .line 553
    :cond_28
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v19

    if-eqz v19, :cond_29

    .line 554
    const-string/jumbo v19, "set ril.cdma.switch.needupdate to 1"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 555
    const-string/jumbo v19, "ril.cdma.switch.needupdate"

    const-string/jumbo v20, "1"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v19, "ril.cdma.switching"

    const-string/jumbo v20, "1"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_29
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v19

    if-nez v19, :cond_2a

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 561
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;->notifyRadioCapabilityChange(I)V

    .line 565
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 570
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-result v19

    return v19

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unregisterForAllDataDisconnected(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 251
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 253
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 250
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateCurrentCarrierInProvider()Z

    .line 238
    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    .line 225
    return-void
.end method
