.class public Lcom/mediatek/internal/telephony/SvlteRadioManager;
.super Lcom/mediatek/internal/telephony/RadioManager;
.source "SvlteRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;
    }
.end annotation


# static fields
.field private static synthetic -android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I = null

.field private static final CDMA_PROPERTY_SILENT_REBOOT_MD:Ljava/lang/String; = "cdma.ril.eboot"

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteRadioManager"

.field private static final PROPERTY_CONFIG_EMDSTATUS_SEND:Ljava/lang/String; = "ril.cdma.emdstatus.send"

.field private static final PROPERTY_ICCID_SIM_C2K:Ljava/lang/String; = "ril.iccid.sim1_c2k"

.field private static final PROPERTY_RIL_CARD_TYPE_SET:Ljava/lang/String; = "gsm.ril.cardtypeset"

.field private static final PROPERTY_RIL_CARD_TYPE_SET_2:Ljava/lang/String; = "gsm.ril.cardtypeset.2"


# direct methods
.method private static synthetic -getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager$MultiSimVariants;->values()[Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/SvlteRadioManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/RadioManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 72
    return-void
.end method

.method private createPhonePowerProxy(Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v1, 0x0

    .line 380
    if-eqz p1, :cond_0

    .line 381
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 387
    const-string/jumbo v0, "PhonePowerProxy is created"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 388
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;)V

    return-object v0

    .line 383
    :pswitch_0
    const-string/jumbo v0, "CdmaPhonePowerProxy is created"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;)V

    return-object v0

    .line 392
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;)V

    return-object v0

    .line 381
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    .line 208
    .local v0, "phoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    return-object v1

    .line 211
    :cond_0
    const-string/jumbo v1, "getPhoneProxy: phoneProxy is null"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 212
    return-object v2
.end method

.method private getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "isLtePhoneNeeded"    # Z

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 194
    .local v0, "phoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    if-eqz v0, :cond_1

    .line 195
    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    return-object v1

    .line 198
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    return-object v1

    .line 201
    :cond_1
    const-string/jumbo v1, "getPhoneProxy: phoneProxy is null"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 202
    return-object v2
.end method

.method private isAllowRadioPowerOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 761
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->allowRadioPowerOn(I)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 767
    const-string/jumbo v0, "SvlteRadioManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return-void
.end method

.method private resetCardProperties()V
    .locals 2

    .prologue
    .line 701
    const-string/jumbo v0, "Reset Card Properties"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 702
    const-string/jumbo v0, "gsm.ril.cardtypeset"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string/jumbo v0, "gsm.ril.cardtypeset.2"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string/jumbo v0, "ril.cdma.emdstatus.send"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private setC2KRadioPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "C2K MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 483
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 480
    :cond_0
    return-void
.end method

.method private setGsmModemPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GSM MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 189
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 186
    return-void
.end method

.method private setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "power"    # Z

    .prologue
    const/4 v1, 0x0

    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 216
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string/jumbo v0, "setModemPowerByPhone: phone is null"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRadioPowerById(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 443
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 444
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioPowerById: phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null, skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 446
    return-void

    .line 448
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 442
    return-void
.end method

.method private setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "power"    # Z

    .prologue
    .line 461
    if-eqz p1, :cond_2

    .line 462
    if-nez p2, :cond_0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioPowerByPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 464
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 460
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 467
    .local v0, "phoneId":I
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isAllowRadioPowerOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioPowerByPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->createPhonePowerProxy(Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;->setRadioPower(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_0

    .line 472
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioPowerByPhone, phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not allow power on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    .end local v0    # "phoneId":I
    :cond_2
    const-string/jumbo v1, "setRadioPowerByPhone: phone is null"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSvlteModemsPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SVLTE LTE MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 180
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SVLTE C2K MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 177
    return-void
.end method

.method private setSvlteRadioPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SVLTE GSM MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 454
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SVLTE C2K MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 457
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V

    .line 451
    return-void
.end method


# virtual methods
.method public forceSetRadioPower(ZI)V
    .locals 6
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const-wide/16 v4, 0xc8

    .line 318
    const-string/jumbo v1, "ril.cdma.emdstatus.send"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 321
    .local v0, "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    return-void

    .line 335
    .end local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "force set radio power for phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 338
    const-string/jumbo v1, "Force Set Radio Power under airplane mode, ignore"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 339
    return-void

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isInIpoShutdown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    const-string/jumbo v1, "Force Set Radio Power under ipo shutdown, ignore"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 344
    return-void

    .line 351
    :cond_2
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isIccIdReady(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    const-string/jumbo v1, "force set radio power, read iccid not ready, wait for200ms"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 355
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 356
    .restart local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void

    .line 361
    .end local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    .line 317
    return-void
.end method

.method protected isModemOff(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, "powerOff":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 155
    .local v0, "cdmaSlot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRadioOff: cdmaSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 157
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_1

    .line 158
    const-string/jumbo v3, "isRadioOff: C2K phone"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 159
    if-nez v0, :cond_0

    .line 160
    const/4 p1, 0x0

    .line 172
    :goto_0
    sget-object v3, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_RADIO_OFF:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 173
    .local v2, "powerOff":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRadioOff: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", powerOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 174
    return v2

    .line 162
    .local v2, "powerOff":Z
    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const-string/jumbo v3, "isRadioOff: GSM phone"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 166
    if-nez v0, :cond_2

    .line 167
    const/4 p1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public notifyAirplaneModeChange(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 622
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v3

    if-nez v3, :cond_0

    .line 623
    const-string/jumbo v3, "airplane mode switching, not allow switch now "

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 624
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->pendingAirplaneModeRequest(Z)V

    .line 625
    return-void

    .line 627
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->waitRadioAvaliable(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    const-string/jumbo v3, "wait for radio avaliable, not allow switch now"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 629
    return-void

    .line 634
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-ne p1, v3, :cond_2

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mAirplaneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 636
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    .line 635
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 636
    const-string/jumbo v4, "is not expected (the same)"

    .line 635
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 637
    return-void

    .line 640
    :cond_2
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Airplane mode changed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isUnderCryptKeeper()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 652
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isMSimModeSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 653
    const-string/jumbo v3, "Airplane mode changed: turn on/off all radio"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 654
    if-eqz p1, :cond_7

    const/4 v2, 0x0

    .line 655
    .local v2, "radioPower":Z
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v0, v3, :cond_8

    .line 656
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    .end local v0    # "i":I
    .end local v2    # "radioPower":Z
    :cond_4
    const-string/jumbo v3, "Airplane mode changed: turn on/off all modem"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 645
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 646
    .local v1, "modemPower":Z
    :goto_2
    const-string/jumbo v3, "1"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 647
    iget v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 648
    const-string/jumbo v3, "ril.cdma.emdstatus.send"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone(Z)V

    .line 620
    .end local v1    # "modemPower":Z
    :cond_5
    :goto_3
    return-void

    .line 645
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "modemPower":Z
    goto :goto_2

    .line 654
    .end local v1    # "modemPower":Z
    :cond_7
    const/4 v2, 0x1

    .restart local v2    # "radioPower":Z
    goto :goto_0

    .line 659
    .restart local v0    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone(Z)V

    goto :goto_3
.end method

.method public notifyIpoShutDown()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resetCardProperties()V

    .line 697
    invoke-super {p0}, Lcom/mediatek/internal/telephony/RadioManager;->notifyIpoShutDown()V

    .line 695
    return-void
.end method

.method public notifyRadioAvailable(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " notifies radio available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isUnderCryptKeeper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string/jumbo v0, "Power off modem because boot up under airplane mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    goto :goto_0
.end method

.method protected onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 492
    const-string/jumbo v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, "simStatus":Ljava/lang/String;
    const-string/jumbo v6, "phone"

    const/4 v8, -0x1

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 497
    .local v3, "phoneId":I
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isValidPhoneId(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 498
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "INTENT:Invalid phone id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", do nothing!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 499
    return-void

    .line 502
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "INTENT:SIM_STATE_CHANGED: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 503
    const-string/jumbo v8, ", sim status: "

    .line 502
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 503
    const-string/jumbo v8, ", phoneId: "

    .line 502
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 505
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 506
    .local v2, "phoneCount":I
    if-ne v2, v9, :cond_1

    .line 507
    const-string/jumbo v6, "gsm.ril.cardtypeset"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 508
    return-void

    .line 511
    :cond_1
    const-string/jumbo v6, "gsm.ril.cardtypeset"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 512
    const-string/jumbo v6, "gsm.ril.cardtypeset.2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 511
    :goto_0
    if-nez v6, :cond_3

    .line 513
    return-void

    :cond_2
    move v6, v7

    .line 511
    goto :goto_0

    .line 517
    :cond_3
    const/4 v0, 0x1

    .line 519
    .local v0, "desiredRadioPower":Z
    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 520
    const-string/jumbo v6, "LOCKED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 519
    if-nez v6, :cond_4

    .line 521
    const-string/jumbo v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 519
    if-eqz v6, :cond_a

    .line 522
    :cond_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mSimInsertedStatus:[I

    aput v9, v6, v3

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Phone["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "iccid":Ljava/lang/String;
    const-string/jumbo v6, "N/A"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 528
    const-string/jumbo v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 529
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v6

    if-ne v3, v6, :cond_5

    .line 530
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v6

    .line 528
    if-eqz v6, :cond_5

    .line 531
    const-string/jumbo v6, "CT 4G card SIM state loaded, c2k iccid not ready, wait for it..."

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 533
    new-instance v4, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;

    invoke-direct {v4, p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Landroid/content/Intent;)V

    .line 534
    .local v4, "simStateChangedRunnable":Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v4, v6, v7}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    return-void

    .line 537
    .end local v4    # "simStateChangedRunnable":Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":SIM ready but ICCID not ready, do nothing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 538
    return-void

    .line 540
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v6

    if-ne v3, v6, :cond_7

    .line 541
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 546
    :cond_7
    const/4 v0, 0x1

    .line 547
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v6, :cond_8

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 549
    const-string/jumbo v7, ", phoneId: "

    .line 548
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    .line 491
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_8
    :goto_1
    return-void

    .line 542
    .restart local v1    # "iccid":Ljava/lang/String;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": No card, do nothing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 543
    return-void

    .line 552
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_a
    const-string/jumbo v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 553
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v6

    if-ne v3, v6, :cond_b

    .line 554
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v6

    .line 553
    if-eqz v6, :cond_b

    .line 555
    return-void

    .line 557
    :cond_b
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mSimInsertedStatus:[I

    aput v7, v6, v3

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Phone["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "]: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x0

    .line 560
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v6, :cond_8

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 562
    const-string/jumbo v7, ", phoneId: "

    .line 561
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPower(ZI)V

    goto/16 :goto_1
.end method

.method protected readIccIdUsingPhoneId(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 711
    const/4 v2, 0x0

    .line 712
    .local v2, "ret":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readIccIdUsingPhoneId: phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 714
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    .line 715
    .local v1, "radioTechMode":I
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v3

    .line 716
    .local v3, "slotId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readIccIdUsingPhoneId: radioTechMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 719
    const/4 v4, 0x3

    if-ne v4, v1, :cond_5

    .line 721
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readIccIdUsingPhoneId: phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for UIM card"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 723
    const-string/jumbo v4, "ril.iccid.sim1_c2k"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "ret":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "iccidCommon":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readIccIdUsingPhoneId: slotId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " iccidCommon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 727
    if-eqz v0, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "N/A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    :cond_0
    if-eqz v2, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 751
    .end local v0    # "iccidCommon":Ljava/lang/String;
    .end local v2    # "ret":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ICCID for phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 752
    return-object v2

    .line 729
    .restart local v0    # "iccidCommon":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readIccIdUsingPhoneId: update iccid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 731
    const-string/jumbo v5, "] use iccidC2K:"

    .line 730
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    .end local v0    # "iccidCommon":Ljava/lang/String;
    .local v2, "ret":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 736
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "ret":Ljava/lang/String;
    goto :goto_0

    .line 738
    .local v2, "ret":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "ril.iccid.sim1_c2k"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "ret":Ljava/lang/String;
    goto :goto_0

    .line 740
    .local v2, "ret":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x2

    if-ne v4, v1, :cond_7

    .line 741
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 742
    const-string/jumbo v4, "ril.iccid.sim1_c2k"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "ret":Ljava/lang/String;
    goto :goto_0

    .line 744
    .local v2, "ret":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "ret":Ljava/lang/String;
    goto :goto_0

    .line 747
    .local v2, "ret":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readIccIdUsingPhoneId: invalid radioTechMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected refreshSimSetting(ZI)V
    .locals 2
    .param p1, "radioPower"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 574
    if-eqz p1, :cond_1

    .line 575
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result p2

    .line 584
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 573
    return-void

    .line 578
    :cond_1
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshSimSetting phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", not update SimSetting!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public setModemPower(ZI)V
    .locals 5
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I

    .prologue
    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Modem Power according to bitmap, Power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    const-string/jumbo v4, ", PhoneBitMap:"

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 107
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    const/4 v2, 0x0

    .line 108
    .local v2, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->-getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Modem Power under SS mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteModemsPower(ZI)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Modem Power under DSDS mode, Power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 113
    :pswitch_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 114
    move v2, v1

    .line 115
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p2

    if-eqz v3, :cond_1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Modem Power under DSDA mode, Power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 119
    invoke-direct {p0, p1, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteModemsPower(ZI)V

    .line 124
    :cond_1
    :goto_2
    if-nez p1, :cond_2

    .line 125
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resetSimInsertedStatus(I)V

    .line 113
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setGsmModemPower(ZI)V

    goto :goto_2

    .line 131
    .end local v1    # "i":I
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SVLTE don\'t TSTS mode! Power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setPhoneRadioPower(ZI)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhoneRadioPower, power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 369
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v0

    .line 370
    const/4 v1, 0x1

    .line 369
    if-ne v0, v1, :cond_0

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setC2KRadioPower(ZI)V

    .line 366
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteRadioPower(ZI)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerById(ZI)V

    goto :goto_0
.end method

.method public setRadioPower(ZI)V
    .locals 10
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const-wide/16 v8, 0xc8

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRadioPower, power="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v5, "ril.cdma.emdstatus.send"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    const-string/jumbo v5, "emdstatus is not sent, wait for 200ms"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 240
    new-instance v4, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v4, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 241
    .local v4, "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    invoke-virtual {p0, v4, v8, v9}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    return-void

    .line 245
    .end local v4    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-eqz v5, :cond_1

    .line 246
    const-string/jumbo v5, "Set Radio Power under airplane mode, ignore"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 247
    return-void

    .line 250
    :cond_1
    invoke-static {p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOff(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "modem for phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " off, do not set radio again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 252
    return-void

    .line 259
    :cond_2
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isIccIdReady(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 260
    const-string/jumbo v5, "RILD initialize not completed, wait for 200ms"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 261
    new-instance v4, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v4, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 262
    .restart local v4    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    invoke-virtual {p0, v4, v8, v9}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    return-void

    .line 266
    .end local v4    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSimInsertedStatus(I)V

    .line 268
    move v3, p1

    .line 269
    .local v3, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "iccId":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/SvlteRadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adjust radio to off because once manually turned off, iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 273
    const-string/jumbo v6, " , phone: "

    .line 272
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 274
    const/4 v3, 0x0

    .line 277
    .end local v3    # "radioPower":Z
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->checkForCTACase()Z

    move-result v2

    .line 279
    .local v2, "isCTACase":Z
    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isAllowRadioPowerOn(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 284
    :cond_5
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getSimInsertedStatus(I)I

    move-result v5

    if-nez v5, :cond_9

    .line 285
    if-eqz v2, :cond_7

    .line 286
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->findMainCapabilityPhoneId()I

    move-result v0

    .line 287
    .local v0, "capabilityPhoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No SIM inserted, force to turn on 3G/4G phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 288
    const-string/jumbo v6, " radio if no any sim radio is enabled!"

    .line 287
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 289
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    .line 236
    .end local v0    # "capabilityPhoneId":I
    :goto_0
    return-void

    .line 280
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not allow power on : +phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 281
    return-void

    .line 290
    :cond_7
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    if-eqz v5, :cond_8

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ECC call Radio Power, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto :goto_0

    .line 294
    :cond_8
    const-string/jumbo v5, "No SIM inserted, turn Radio off!"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 295
    const/4 v3, 0x0

    .line 296
    .local v3, "radioPower":Z
    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto :goto_0

    .line 299
    .end local v3    # "radioPower":Z
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Trigger set Radio Power, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshSimSetting(ZI)V

    .line 302
    invoke-direct {p0, v3, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerById(ZI)V

    goto :goto_0
.end method

.method public setSilentRebootPropertyForAllModem(Ljava/lang/String;)V
    .locals 3
    .param p1, "isSilentReboot"    # Ljava/lang/String;

    .prologue
    .line 667
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 668
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->-getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 685
    const-string/jumbo v1, "set eboot under SS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 686
    const-string/jumbo v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string/jumbo v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :goto_0
    return-void

    .line 670
    :pswitch_0
    const-string/jumbo v1, "set eboot under DSDS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 671
    const-string/jumbo v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string/jumbo v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :pswitch_1
    const-string/jumbo v1, "set eboot under DSDA"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 676
    const-string/jumbo v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string/jumbo v1, "gsm.ril.eboot.2"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string/jumbo v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :pswitch_2
    const-string/jumbo v1, "set eboot under TSTS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 682
    const-string/jumbo v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setSimInsertedStatus(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 589
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->setSimInsertedStatus(I)V

    .line 588
    :cond_0
    return-void
.end method
