.class public Lcom/mediatek/bluetoothgatt/service/Tps;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Tps.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "1804"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 61
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Tps;->GATT_UUID:Ljava/util/UUID;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addTxPowerLevel()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 89
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TX_POWER_LEVEL:Ljava/util/UUID;

    .line 92
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->getValue()[B

    move-result-object v5

    .line 90
    const/4 v3, 0x2

    move-object v0, p0

    move v4, v1

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Tps;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 85
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Tps;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Tps;->addTxPowerLevel()V

    .line 78
    return-void
.end method
