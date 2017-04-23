.class public Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;
.super Landroid/os/Handler;
.source "SvlteUiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$SingletonHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteUiccController"


# instance fields
.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    const-string/jumbo v0, "Constructing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 68
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;-><init>()V

    return-void
.end method

.method private doIccAppTypeSwitch(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "radioTech"    # I

    .prologue
    .line 123
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 124
    .local v0, "iccCard":Lcom/android/internal/telephony/uicc/IccCardProxy;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 122
    return-void
.end method

.method private doOP09SvlteTestSimAppTypeSwitch(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OP09 Switch gsm radio technology for usim in slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 141
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->doIccAppTypeSwitch(II)V

    .line 136
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;
    .locals 2

    .prologue
    const-class v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$SingletonHolder;->INSTANCE:Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isOP09()Z
    .locals 4

    .prologue
    .line 153
    const-string/jumbo v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "OPTR":Ljava/lang/String;
    const-string/jumbo v2, "ro.operator.seg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "OPSEG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPTR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " OPSEG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v2, "OP09"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SEGDEFAULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSimReady(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 161
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    .line 162
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 161
    :cond_0
    return v1
.end method

.method private isUsimTestSim(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 145
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isOP09()Z

    move-result v0

    .line 145
    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 148
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimOnly(I)Z

    move-result v0

    .line 145
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isSvlteTestSimMode()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string/jumbo v0, "SvlteUiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string/jumbo v0, "SvlteUiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public static make()Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    move-result-object v0

    return-object v0
.end method

.method private onIccCardStatusChange(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isSimReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isUsimTestSim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->doOP09SvlteTestSimAppTypeSwitch(I)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 75
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->loge(Ljava/lang/String;)V

    .line 95
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_0
    return-void

    .line 101
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 102
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 103
    .local v1, "index":I
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage (EVENT_ICC_CHANGED) , index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 110
    :goto_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/16 v2, 0x64

    if-ne v2, v1, :cond_0

    .line 112
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    .line 114
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->onIccCardStatusChange(I)V

    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v2, "handleMessage (EVENT_ICC_CHANGED), come from myself"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isSvlteTestSimMode()Z
    .locals 4

    .prologue
    .line 88
    const-string/jumbo v1, "persist.sys.forcttestcard"

    .line 89
    .local v1, "testCardFlag":Ljava/lang/String;
    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "forceCTTestCard":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testCardFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
