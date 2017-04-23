.class abstract Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;
.super Landroid/os/Handler;
.source "SvlteIrController.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PhoneController"
.end annotation


# static fields
.field protected static final EVENT_RADIO_NO_SERVICE:I = 0x136

.field protected static final EVENT_ROAMING_MODE_CHANGED:I = 0x138

.field protected static final EVENT_SERVICE_STATE_CHANGED:I = 0x137

.field protected static final STATE_GETTING_PLMN:I = 0x3

.field protected static final STATE_INIT:I = 0x1

.field protected static final STATE_NETWORK_SELECTED:I = 0x5

.field protected static final STATE_NO_SERVICE:I = 0x2

.field protected static final STATE_SELECTING_NETWORK:I = 0x4

.field protected static final STATE_UNKNOWN:I


# instance fields
.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

.field protected mIsFirstRoundSearch:Z

.field protected mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPhoneControllerActivePhoneId:I

.field protected mPlmns:[Ljava/lang/String;

.field protected mPreDataState:I

.field protected mPreState:I

.field protected mPreVoiceState:I

.field protected mPreviewPlmnHandled:Z

.field protected mServiceType:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

.field protected mState:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;


# direct methods
.method protected constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "activePhoneId"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 415
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 398
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mState:I

    .line 399
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreState:I

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPlmns:[Ljava/lang/String;

    .line 403
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreviewPlmnHandled:Z

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mIsFirstRoundSearch:Z

    .line 409
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreVoiceState:I

    .line 411
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreDataState:I

    .line 418
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 419
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 420
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 421
    iput p4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPhoneControllerActivePhoneId:I

    .line 416
    return-void
.end method


# virtual methods
.method public cancelAvailableNetworks()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method protected convertVoiceRegState(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 616
    move v0, p1

    .line 617
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 633
    :goto_0
    :pswitch_0
    return v0

    .line 619
    :pswitch_1
    const/4 v0, 0x0

    .line 620
    goto :goto_0

    .line 622
    :pswitch_2
    const/4 v0, 0x2

    .line 623
    goto :goto_0

    .line 625
    :pswitch_3
    const/4 v0, 0x3

    .line 626
    goto :goto_0

    .line 628
    :pswitch_4
    const/4 v0, 0x4

    .line 629
    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected defaultMessageHandler(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 514
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 516
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onRoamingModeSwitchDone()V

    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x138
        :pswitch_0
    .end packed-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method protected enableNoSerivceDelay()Z
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    return v0
.end method

.method public findAvailabeNetwork()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method protected getState()I
    .locals 2

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " getState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mState:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->logdForController(Ljava/lang/String;)V

    .line 449
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->msgToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->logdForController(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_0
    return-void

    .line 494
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processInitState(Landroid/os/Message;)V

    goto :goto_0

    .line 497
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processNoServiceState(Landroid/os/Message;)V

    goto :goto_0

    .line 500
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processGettingPlmnState(Landroid/os/Message;)V

    goto :goto_0

    .line 503
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processSelectingNWState(Landroid/os/Message;)V

    goto :goto_0

    .line 506
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->defaultMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected logdForController(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 613
    return-void
.end method

.method protected msgToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "msgWhat"    # I

    .prologue
    .line 454
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method protected postponeNoServiceMessageIfNeeded(I)V
    .locals 4
    .param p1, "delayedTime"    # I

    .prologue
    const/16 v1, 0x136

    .line 607
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->removeMessages(I)V

    .line 609
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 606
    :cond_0
    return-void
.end method

.method protected processGettingPlmnState(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->defaultMessageHandler(Landroid/os/Message;)V

    .line 542
    return-void
.end method

.method protected processInitState(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->defaultMessageHandler(Landroid/os/Message;)V

    .line 525
    return-void
.end method

.method protected processNoServiceState(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 530
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 537
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->defaultMessageHandler(Landroid/os/Message;)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 532
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mServiceType:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mServiceType:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onServiceStateChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_0
    .end packed-switch
.end method

.method protected processSelectingNWState(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->defaultMessageHandler(Landroid/os/Message;)V

    .line 546
    return-void
.end method

.method public registerListener(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    .line 551
    return-void
.end method

.method public registerNetworkManually(Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 0
    .param p1, "oi"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 571
    return-void
.end method

.method protected removeNoServiceMessage()V
    .locals 1

    .prologue
    .line 603
    const/16 v0, 0x136

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->removeMessages(I)V

    .line 602
    return-void
.end method

.method protected resetToInitialState()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 439
    const-string/jumbo v0, " reset to initial state"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->logdForController(Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mIsFirstRoundSearch:Z

    .line 441
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreVoiceState:I

    .line 442
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreDataState:I

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPlmns:[Ljava/lang/String;

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreviewPlmnHandled:Z

    .line 438
    return-void
.end method

.method public resumeNetwork()V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method protected sendNoServiceMessage(I)V
    .locals 4
    .param p1, "delayedTime"    # I

    .prologue
    const/16 v1, 0x136

    .line 597
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 596
    :cond_0
    return-void
.end method

.method public setIfEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 649
    return-void
.end method

.method public setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 0
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 556
    return-void
.end method

.method protected setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V
    .locals 3
    .param p1, "serviceType"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .prologue
    const/4 v2, 0x2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setServiceType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") mServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mServiceType:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->logdForController(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 462
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq p1, v0, :cond_2

    .line 463
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->setState(I)V

    .line 469
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mServiceType:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq v0, p1, :cond_1

    .line 470
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mServiceType:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .line 471
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq p1, v0, :cond_3

    .line 472
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->removeNoServiceMessage()V

    .line 473
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onServiceStateChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 457
    :cond_1
    :goto_1
    return-void

    .line 464
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 465
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreState:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->setState(I)V

    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->enableNoSerivceDelay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 481
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get6()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->sendNoServiceMessage(I)V

    goto :goto_1

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onServiceStateChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto :goto_1
.end method

.method protected setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    const-string/jumbo v1, " mState = "

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mState:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    const-string/jumbo v1, " mPreState = "

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreState:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->logdForController(Ljava/lang/String;)V

    .line 428
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mState:I

    if-eq v0, p1, :cond_0

    .line 429
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mState:I

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreState:I

    .line 430
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mState:I

    .line 432
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->resetToInitialState()V

    .line 424
    :cond_0
    return-void
.end method

.method public startNewSearchRound()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 642
    const-string/jumbo v0, "startNewSearchRound()"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->logdForController(Ljava/lang/String;)V

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mIsFirstRoundSearch:Z

    .line 644
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreVoiceState:I

    .line 645
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->mPreDataState:I

    .line 641
    return-void
.end method

.method protected stateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 574
    packed-switch p1, :pswitch_data_0

    .line 588
    const-string/jumbo v0, "STATE_INVALID"

    return-object v0

    .line 576
    :pswitch_0
    const-string/jumbo v0, "STATE_UNKNOWN"

    return-object v0

    .line 578
    :pswitch_1
    const-string/jumbo v0, "STATE_INIT"

    return-object v0

    .line 580
    :pswitch_2
    const-string/jumbo v0, "STATE_NO_SERVICE"

    return-object v0

    .line 582
    :pswitch_3
    const-string/jumbo v0, "STATE_GETTING_PLMN"

    return-object v0

    .line 584
    :pswitch_4
    const-string/jumbo v0, "STATE_SELECTING_NETWORK"

    return-object v0

    .line 586
    :pswitch_5
    const-string/jumbo v0, "STATE_NETWORK_SELECTED"

    return-object v0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
