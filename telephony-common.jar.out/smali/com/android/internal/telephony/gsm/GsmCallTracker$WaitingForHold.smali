.class Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;
.super Ljava/lang/Object;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingForHold"
.end annotation


# instance fields
.field private mClirMode:I

.field private mDialString:Ljava/lang/String;

.field private mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

.field private mWaiting:Z

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->handleOperation()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 152
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 153
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 154
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 156
    return-void
.end method

.method private handleOperation()Z
    .locals 10

    .prologue
    const/16 v9, 0x16

    .line 191
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "handleWaitingOperation begin"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    if-eqz v4, :cond_3

    .line 194
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 202
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 201
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 206
    :goto_0
    const-string/jumbo v4, "ro.mtk_vt3g324m_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    new-instance v5, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    invoke-direct {v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;-><init>()V

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    .line 209
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "handleOperation new GsmVTProvider"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->getInterface()Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    move-result-object v1

    .line 213
    .local v1, "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    if-eqz v1, :cond_1

    .line 215
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;-><init>(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;)V

    .line 216
    .local v2, "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "handleOperation new GsmVideoCallProviderWrapper"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1    # "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .end local v2    # "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 226
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "handleWaitingOperation end"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v4, 0x1

    return v4

    .line 196
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v3

    .line 197
    .local v3, "serviceCategory":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setEccServiceCategory(I)V

    .line 198
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 199
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 198
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 219
    .end local v3    # "serviceCategory":I
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "handleOperation new GsmVideoCallProviderWrapper failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method isWaiting()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 177
    const-string/jumbo v0, "GsmCallTracker"

    const-string/jumbo v1, "Reset WaitingForHoldRequest variables"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 180
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 181
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 182
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 175
    return-void
.end method

.method set()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 164
    return-void
.end method

.method public set(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 1
    .param p1, "dialSting"    # Ljava/lang/String;
    .param p2, "clir"    # I
    .param p3, "uusinfo"    # Lcom/android/internal/telephony/UUSInfo;

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 171
    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 172
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 168
    return-void
.end method
