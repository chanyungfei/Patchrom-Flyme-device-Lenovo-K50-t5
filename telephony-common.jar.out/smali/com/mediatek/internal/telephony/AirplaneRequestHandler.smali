.class public Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
.super Landroid/os/Handler;
.source "AirplaneRequestHandler.java"


# static fields
.field private static final EVENT_CDMA_RADIO_CHANGE_FOR_AVALIABLE:I = 0x68

.field private static final EVENT_CDMA_RADIO_CHANGE_FOR_OFF:I = 0x65

.field private static final EVENT_GSM_RADIO_CHANGE_FOR_AVALIABLE:I = 0x69

.field private static final EVENT_GSM_RADIO_CHANGE_FOR_OFF:I = 0x66

.field private static final EVENT_LTE_RADIO_CHANGE_FOR_AVALIABLE:I = 0x67

.field private static final EVENT_LTE_RADIO_CHANGE_FOR_OFF:I = 0x64

.field private static final EVENT_WAIT_CDMA_RADIO_CHANGE_FOR_AVALIABLE:I = 0xc9

.field private static final EVENT_WAIT_GSM_RADIO_CHANGE_FOR_AVALIABLE:I = 0xca

.field private static final EVENT_WAIT_LTE_RADIO_CHANGE_FOR_AVALIABLE:I = 0xc8

.field private static final EXTRA_AIRPLANE_MODE:Ljava/lang/String; = "airplaneMode"

.field private static final INTENT_ACTION_AIRPLANE_CHANGE_DONE:Ljava/lang/String; = "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

.field private static final LOG_TAG:Ljava/lang/String; = "AirplaneRequestHandler"

.field private static sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForceSwitch:Z

.field private mNeedIgnoreMessageForChangeDone:Z

.field private mNeedIgnoreMessageForWait:Z

.field private mPendingAirplaneModeRequest:Ljava/lang/Boolean;

.field private mPhoneCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mContext:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    .line 66
    return-void
.end method

.method private checkPendingRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkPendingRequest, mPendingAirplaneModeRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    .line 276
    .local v0, "pendingAirplaneModeRequest":Ljava/lang/Boolean;
    iput-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    .line 277
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    .line 278
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 277
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->notifyAirplaneModeChange(Z)V

    .line 272
    .end local v0    # "pendingAirplaneModeRequest":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method private final isRadioAvaliable()Z
    .locals 4

    .prologue
    .line 400
    const/4 v1, 0x1

    .line 401
    .local v1, "isRadioAvaliable":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v3, :cond_0

    .line 402
    move v2, v0

    .line 403
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioAvaliable(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 404
    const/4 v1, 0x0

    .line 408
    .end local v2    # "phoneId":I
    :cond_0
    return v1

    .line 401
    .restart local v2    # "phoneId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isRadioAvaliable(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " , in svlte mode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    const-string/jumbo v3, " , lte radio state = "

    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 220
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 218
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string/jumbo v3, " , cdma radio state = "

    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 218
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 225
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 226
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 225
    if-eq v0, v3, :cond_1

    .line 227
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 228
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 227
    if-eq v0, v3, :cond_0

    move v0, v1

    .line 225
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 227
    goto :goto_0

    :cond_1
    move v0, v2

    .line 225
    goto :goto_0

    .line 230
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " , in csfb mode, lte radio state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 231
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 234
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 235
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 234
    if-eq v0, v3, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    .line 237
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 238
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 239
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 238
    if-eq v0, v3, :cond_5

    :goto_2
    return v1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private isRadioOff(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " , in svlte mode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v3, " , lte radio state = "

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 246
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    const-string/jumbo v3, " , cdma radio state = "

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 246
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 253
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 254
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 253
    if-ne v0, v3, :cond_1

    .line 255
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 256
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 255
    if-ne v0, v3, :cond_0

    move v0, v1

    .line 253
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 255
    goto :goto_0

    :cond_1
    move v0, v2

    .line 253
    goto :goto_0

    .line 258
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", in csfb mode, lte radio state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 259
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 262
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 263
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 262
    if-ne v0, v3, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    .line 265
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 266
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 267
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 266
    if-ne v0, v3, :cond_5

    :goto_2
    return v1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string/jumbo v0, "AirplaneRequestHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RadioManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method private final unWaitRadioAvaliable()V
    .locals 5

    .prologue
    .line 373
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForWait:Z

    .line 374
    const/4 v2, 0x0

    .line 375
    .local v2, "phoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v3, :cond_2

    .line 376
    move v2, v0

    .line 377
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 379
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 381
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unWaitRadioAvaliable, for svlte phone,  phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 375
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unWaitRadioAvaliable, for csfb phone,  phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :cond_1
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 393
    .local v1, "mPhone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v3, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unWaitRadioAvaliable, for csfb phone,  phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 372
    .end local v1    # "mPhone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    return-void
.end method


# virtual methods
.method protected allowSwitching()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mForceSwitch:Z

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 124
    iget-object v4, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mContext:Landroid/content/Context;

    .line 125
    const-string/jumbo v5, "connectivity"

    .line 124
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 126
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 128
    .local v2, "isWifiOnly":Z
    :goto_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 122
    :cond_0
    :goto_1
    return-void

    .line 126
    .end local v2    # "isWifiOnly":Z
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "isWifiOnly":Z
    goto :goto_0

    .line 132
    :sswitch_0
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    if-nez v4, :cond_0

    .line 133
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_4

    .line 134
    const-string/jumbo v4, "handle EVENT_CDMA_RADIO_CHANGE_FOR_OFF"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 140
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v4, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v1, v4, :cond_3

    .line 141
    move v3, v1

    .line 143
    .local v3, "phoneId":I
    if-eqz v2, :cond_6

    .line 144
    const-string/jumbo v4, "wifi-only, don\'t judge radio off"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 154
    .end local v3    # "phoneId":I
    :cond_3
    const-string/jumbo v4, "All radio off"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 155
    sget-object v4, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->unMonitorAirplaneChangeDone(Z)V

    .line 157
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->checkPendingRequest()V

    goto :goto_1

    .line 135
    .end local v1    # "i":I
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_5

    .line 136
    const-string/jumbo v4, "handle EVENT_LTE_RADIO_CHANGE_FOR_OFF"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 137
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x66

    if-ne v4, v5, :cond_2

    .line 138
    const-string/jumbo v4, "handle EVENT_GSM_RADIO_CHANGE_FOR_OFF"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 148
    .restart local v1    # "i":I
    .restart local v3    # "phoneId":I
    :cond_6
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioOff(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "radio state change, radio not off, phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 151
    return-void

    .line 140
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 163
    .end local v1    # "i":I
    .end local v3    # "phoneId":I
    :sswitch_1
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    if-nez v4, :cond_0

    .line 164
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x67

    if-ne v4, v5, :cond_a

    .line 165
    const-string/jumbo v4, "handle EVENT_LTE_RADIO_CHANGE_FOR_AVALIABLE"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 171
    :cond_8
    :goto_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget v4, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v1, v4, :cond_9

    .line 172
    move v3, v1

    .line 174
    .restart local v3    # "phoneId":I
    if-eqz v2, :cond_c

    .line 175
    const-string/jumbo v4, "wifi-only, don\'t judge radio avaliable"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 185
    .end local v3    # "phoneId":I
    :cond_9
    const-string/jumbo v4, "All radio avaliable"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 186
    sget-object v4, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->unMonitorAirplaneChangeDone(Z)V

    .line 188
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->checkPendingRequest()V

    goto/16 :goto_1

    .line 166
    .end local v1    # "i":I
    :cond_a
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x68

    if-ne v4, v5, :cond_b

    .line 167
    const-string/jumbo v4, "handle EVENT_CDMA_RADIO_CHANGE_FOR_AVALIABLE"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 168
    :cond_b
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x69

    if-ne v4, v5, :cond_8

    .line 169
    const-string/jumbo v4, "handle EVENT_GSM_RADIO_CHANGE_FOR_AVALIABLE"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 179
    .restart local v1    # "i":I
    .restart local v3    # "phoneId":I
    :cond_c
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioAvaliable(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "radio state change, radio not avaliable, phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 182
    return-void

    .line 171
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 194
    .end local v1    # "i":I
    .end local v3    # "phoneId":I
    :sswitch_2
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForWait:Z

    if-nez v4, :cond_0

    .line 195
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_f

    .line 196
    const-string/jumbo v4, "handle EVENT_WAIT_LTE_RADIO_CHANGE_FOR_AVALIABLE"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 202
    :cond_e
    :goto_6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioAvaliable()Z

    move-result v4

    if-nez v4, :cond_11

    .line 203
    return-void

    .line 197
    :cond_f
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_10

    .line 198
    const-string/jumbo v4, "handle EVENT_WAIT_CDMA_RADIO_CHANGE_FOR_AVALIABLE"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 199
    :cond_10
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xca

    if-ne v4, v5, :cond_e

    .line 200
    const-string/jumbo v4, "handle EVENT_WAIT_GSM_RADIO_CHANGE_FOR_AVALIABLE"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 205
    :cond_11
    const-string/jumbo v4, "All radio avaliable"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->unWaitRadioAvaliable()V

    .line 207
    sget-object v4, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 208
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->checkPendingRequest()V

    goto/16 :goto_1

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
    .end sparse-switch
.end method

.method protected monitorAirplaneChangeDone(Z)V
    .locals 7
    .param p1, "power"    # Z

    .prologue
    const/16 v6, 0x69

    const/16 v5, 0x66

    const/4 v4, 0x0

    .line 72
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "monitorAirplaneChangeDone, power = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    const-string/jumbo v3, " mNeedIgnoreMessageForChangeDone = "

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 75
    sget-object v2, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "phoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v2, :cond_5

    .line 78
    move v1, v0

    .line 79
    if-eqz p1, :cond_2

    .line 80
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 82
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 84
    const/16 v3, 0x67

    .line 82
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 87
    const/16 v3, 0x68

    .line 85
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 94
    :cond_1
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 101
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 103
    const/16 v3, 0x64

    .line 101
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 106
    const/16 v3, 0x65

    .line 104
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 108
    :cond_3
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 113
    :cond_4
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 71
    :cond_5
    return-void
.end method

.method protected pendingAirplaneModeRequest(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pendingAirplaneModeRequest, enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    .line 55
    return-void
.end method

.method public setForceSwitch(Z)V
    .locals 2
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mForceSwitch:Z

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSwitch, forceSwitch ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method protected unMonitorAirplaneChangeDone(Z)V
    .locals 5
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 283
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "airplaneMode"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, "phoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v3, :cond_2

    .line 289
    move v2, v0

    .line 290
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 291
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 293
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unMonitorAirplaneChangeDone, for svlte phone,  phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 288
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unMonitorAirplaneChangeDone, for csfb phone,  phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_1
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unMonitorAirplaneChangeDone, for gsm phone,  phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_2
    return-void
.end method

.method protected waitRadioAvaliable(Z)Z
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    const/16 v10, 0xca

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 327
    iget-object v6, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mContext:Landroid/content/Context;

    .line 328
    const-string/jumbo v7, "connectivity"

    .line 327
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 329
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    .line 331
    .local v2, "isWifiOnly":Z
    :goto_0
    if-nez v2, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 332
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioAvaliable()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    .line 333
    .local v5, "wait":Z
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waitRadioAvaliable, enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", wait="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 334
    const-string/jumbo v7, ", isWifiOnly="

    .line 333
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 335
    if-eqz v5, :cond_5

    .line 337
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->pendingAirplaneModeRequest(Z)V

    .line 340
    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForWait:Z

    .line 341
    sget-object v6, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 344
    const/4 v4, 0x0

    .line 345
    .local v4, "phoneId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v6, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v1, v6, :cond_5

    .line 346
    move v4, v1

    .line 347
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 348
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 349
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 351
    const/16 v7, 0xc8

    .line 349
    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 352
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 354
    const/16 v7, 0xc9

    .line 352
    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    .end local v1    # "i":I
    .end local v2    # "isWifiOnly":Z
    .end local v4    # "phoneId":I
    .end local v5    # "wait":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "isWifiOnly":Z
    goto/16 :goto_0

    .line 332
    :cond_1
    const/4 v5, 0x1

    .restart local v5    # "wait":Z
    goto :goto_1

    .line 331
    .end local v5    # "wait":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "wait":Z
    goto :goto_1

    .line 356
    .restart local v1    # "i":I
    .restart local v4    # "phoneId":I
    :cond_3
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0, v10, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_3

    .line 361
    :cond_4
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .line 363
    .local v3, "mPhone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v6, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0, v10, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_3

    .line 369
    .end local v1    # "i":I
    .end local v3    # "mPhone":Lcom/android/internal/telephony/PhoneBase;
    .end local v4    # "phoneId":I
    :cond_5
    return v5
.end method
