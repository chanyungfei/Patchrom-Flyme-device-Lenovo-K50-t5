.class public Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "TemperatureMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;
    }
.end annotation


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

.field private mTemperatureMeasurementValueCelsius:[B

.field private mTemperatureMeasurementValueFahrenheit:[B

.field private mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

.field private mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A1C"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    .line 83
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    .line 91
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    .line 98
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 105
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 113
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;)Z

    .line 114
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTemperatureMeasurementValueCelsius(F)Z

    .line 115
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTemperatureMeasurementValueFahrenheit(F)Z

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;FFLcom/mediatek/bluetoothgatt/characteristic/DateTime;Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;)V
    .locals 2
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;
    .param p2, "temperatureMeasurementValueCelsius"    # F
    .param p3, "temperatureMeasurementValueFahrenheit"    # F
    .param p4, "timeStamp"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p5, "temperatureType"    # Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    .prologue
    const/4 v1, 0x4

    .line 148
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    .line 98
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 105
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;)Z

    .line 156
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTemperatureMeasurementValueCelsius(F)Z

    .line 157
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTemperatureMeasurementValueFahrenheit(F)Z

    .line 158
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTimeStamp(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 159
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTemperatureType(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;)Z

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;FFLcom/mediatek/bluetoothgatt/characteristic/DateTime;Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;
    .param p2, "temperatureMeasurementValueCelsius"    # F
    .param p3, "temperatureMeasurementValueFahrenheit"    # F
    .param p4, "timeStamp"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p5, "temperatureType"    # Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;
    .param p6, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x4

    .line 172
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    .line 98
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 105
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    .line 179
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;)Z

    .line 181
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTemperatureMeasurementValueCelsius(F)Z

    .line 182
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTemperatureMeasurementValueFahrenheit(F)Z

    .line 183
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTimeStamp(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 184
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setTemperatureType(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;)Z

    .line 178
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x4

    .line 123
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    .line 98
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 105
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setValue([B)Z

    .line 123
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x4

    .line 134
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    .line 98
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 105
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    .line 135
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setValue([B)Z

    .line 134
    return-void
.end method


# virtual methods
.method public getFlags()Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    return-object v0
.end method

.method public getTemperatureMeasurementValueCelsius()F
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToFloat([B)F

    move-result v0

    return v0
.end method

.method public getTemperatureMeasurementValueFahrenheit()F
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToFloat([B)F

    move-result v0

    return v0
.end method

.method public getTemperatureType()Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    return-object v0
.end method

.method public getTimeStamp()Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 227
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 229
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->length()I

    move-result v1

    .line 231
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 232
    add-int/lit8 v0, v1, 0x0

    .line 235
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTemperatureMeasurementValueCelsius()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    array-length v1, v3

    .line 237
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 238
    add-int/2addr v0, v1

    .line 241
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTemperatureMeasurementValueFahrenheit()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    array-length v1, v3

    .line 243
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 244
    add-int/2addr v0, v1

    .line 247
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTimeStamp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 249
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 250
    add-int/2addr v0, v1

    .line 253
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTemperatureType()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->length()I

    move-result v1

    .line 255
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 256
    add-int/2addr v0, v1

    .line 259
    .end local v1    # "fieldLen":I
    :cond_4
    return-object v2
.end method

.method public isSupportFlags()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTemperatureMeasurementValueCelsius()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 405
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->getTemperatureUnitsFlag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportTemperatureMeasurementValueFahrenheit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 439
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->getTemperatureUnitsFlag()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportTemperatureType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 535
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->getTemperatureTypeFlag()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportTimeStamp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 487
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->getTimeStampFlag()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->length()I

    move-result v0

    .line 199
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTemperatureMeasurementValueCelsius()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    array-length v2, v2

    .line 197
    :goto_1
    add-int/2addr v2, v0

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTemperatureMeasurementValueFahrenheit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    array-length v0, v0

    .line 197
    :goto_2
    add-int/2addr v2, v0

    .line 203
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v0

    .line 197
    :goto_3
    add-int/2addr v0, v2

    .line 205
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTemperatureType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->length()I

    move-result v1

    .line 197
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 198
    goto :goto_0

    :cond_2
    move v2, v1

    .line 200
    goto :goto_1

    :cond_3
    move v0, v1

    .line 202
    goto :goto_2

    :cond_4
    move v0, v1

    .line 204
    goto :goto_3
.end method

.method public setFlags(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    .line 361
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public setTemperatureMeasurementValueCelsius(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 391
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatRangeCheck(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    return v0

    .line 394
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToFloat(F)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    .line 395
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public setTemperatureMeasurementValueFahrenheit(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 425
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatRangeCheck(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToFloat(F)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    .line 429
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public setTemperatureType(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x0

    return v0

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 526
    const/4 v0, 0x1

    return v0
.end method

.method public setTemperatureType([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 507
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    return v0

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeStamp(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x0

    return v0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeStamp([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    return v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->length()I

    move-result v1

    .line 275
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    return v4

    .line 279
    :cond_0
    new-array v0, v1, [B

    .line 281
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 282
    add-int/lit8 v2, v1, 0x0

    .line 284
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->setByteArray([B)V

    .line 287
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTemperatureMeasurementValueCelsius()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    array-length v1, v3

    .line 290
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 291
    return v4

    .line 294
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueCelsius:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 295
    add-int/2addr v2, v1

    .line 298
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTemperatureMeasurementValueFahrenheit()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 299
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    array-length v1, v3

    .line 301
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 302
    return v4

    .line 305
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureMeasurementValueFahrenheit:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 306
    add-int/2addr v2, v1

    .line 309
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTimeStamp()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 310
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 312
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 313
    return v4

    .line 316
    :cond_6
    new-array v0, v1, [B

    .line 318
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 319
    add-int/2addr v2, v1

    .line 321
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    .line 324
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->isSupportTemperatureType()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 325
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->length()I

    move-result v1

    .line 327
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_8

    .line 328
    return v4

    .line 331
    :cond_8
    new-array v0, v1, [B

    .line 333
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 334
    add-int/2addr v2, v1

    .line 336
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->mTemperatureType:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setValue([B)Z

    .line 339
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 340
    const/4 v3, 0x1

    return v3
.end method
