.class public Lcom/mediatek/bluetoothgatt/service/Bas;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Bas.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "180F"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Bas;->GATT_UUID:Ljava/util/UUID;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addBatteryLevel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 90
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    .line 93
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;->getValue()[B

    move-result-object v5

    .line 91
    const/4 v3, 0x2

    move-object v0, p0

    move v4, v1

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Bas;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 98
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CHARACTERISTIC_PRESENTATION_FORMAT:Ljava/util/UUID;

    .line 96
    invoke-virtual {p0, v6, v0, v1}, Lcom/mediatek/bluetoothgatt/service/Bas;->addDescriptor(ZLjava/util/UUID;I)V

    .line 104
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 105
    const/16 v1, 0x11

    .line 102
    invoke-virtual {p0, v6, v0, v1}, Lcom/mediatek/bluetoothgatt/service/Bas;->addDescriptor(ZLjava/util/UUID;I)V

    .line 86
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Bas;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Bas;->addBatteryLevel()V

    .line 79
    return-void
.end method
