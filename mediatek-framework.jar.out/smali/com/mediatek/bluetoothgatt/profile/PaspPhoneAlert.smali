.class public Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlert;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "PaspPhoneAlert.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PaspPhoneAlert"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 72
    const-string/jumbo v0, "PaspPhoneAlert"

    const-string/jumbo v1, "PaspPhoneAlert()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method protected loadServicesConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Pass;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Pass;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlert;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 79
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlert;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 80
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlert;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 82
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlert;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 84
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlert;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 77
    return-void
.end method

.method public notifyPassAlertStatus(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 97
    const-string/jumbo v0, "PaspPhoneAlert"

    const-string/jumbo v1, "notifyPassAlertStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    .line 101
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    .line 102
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 100
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlert;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 95
    return-void
.end method

.method public notifyPassRingerSetting(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 114
    const-string/jumbo v0, "PaspPhoneAlert"

    const-string/jumbo v1, "notifyPassRingerSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    .line 118
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    .line 119
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 117
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlert;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 112
    return-void
.end method
