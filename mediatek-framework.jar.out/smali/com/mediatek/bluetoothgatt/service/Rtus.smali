.class public Lcom/mediatek/bluetoothgatt/service/Rtus;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Rtus.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "1806"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Rtus;->GATT_UUID:Ljava/util/UUID;

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
.method addTimeUpdateControlPoint()V
    .locals 6

    .prologue
    .line 91
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_UPDATE_CONTROL_POINT:Ljava/util/UUID;

    .line 94
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->getValue()[B

    move-result-object v5

    .line 90
    const/4 v1, 0x1

    .line 92
    const/4 v3, 0x4

    .line 93
    const/16 v4, 0x10

    move-object v0, p0

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Rtus;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 87
    return-void
.end method

.method addTimeUpdateState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 106
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_UPDATE_STATE:Ljava/util/UUID;

    .line 109
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->getValue()[B

    move-result-object v5

    .line 107
    const/4 v3, 0x2

    move-object v0, p0

    move v4, v1

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Rtus;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 102
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Rtus;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Rtus;->addTimeUpdateControlPoint()V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Rtus;->addTimeUpdateState()V

    .line 79
    return-void
.end method
