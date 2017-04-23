.class public Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "BloodPressureMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;,
        Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;
    }
.end annotation


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mDiastolicKpa:[B

.field private mDiastolicMmhg:[B

.field private mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

.field private mMeanArterialPressureKpa:[B

.field private mMeanArterialPressureMmhg:[B

.field private mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

.field private mPulseRate:[B

.field private mSystolicKpa:[B

.field private mSystolicMmhg:[B

.field private mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

.field private mUserId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A35"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    .line 83
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    .line 91
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    .line 99
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    .line 123
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    .line 130
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 138
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    .line 153
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 161
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;)Z

    .line 162
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setSystolicMmhg(F)Z

    .line 163
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setDiastolicMmhg(F)Z

    .line 164
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setMeanArterialPressureMmhg(F)Z

    .line 165
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setSystolicKpa(F)Z

    .line 166
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setDiastolicKpa(F)Z

    .line 167
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setMeanArterialPressureKpa(F)Z

    .line 168
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setPulseRate(F)Z

    .line 169
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setUserId(I)Z

    .line 170
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setMeasurementStatus(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;)Z

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;FFFFFFLcom/mediatek/bluetoothgatt/characteristic/DateTime;FILcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;)V
    .locals 2
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;
    .param p2, "systolicMmhg"    # F
    .param p3, "diastolicMmhg"    # F
    .param p4, "meanArterialPressureMmhg"    # F
    .param p5, "systolicKpa"    # F
    .param p6, "diastolicKpa"    # F
    .param p7, "meanArterialPressureKpa"    # F
    .param p8, "timeStamp"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p9, "pulseRate"    # F
    .param p10, "userId"    # I
    .param p11, "measurementStatus"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    .prologue
    const/4 v1, 0x2

    .line 209
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    .line 107
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    .line 115
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    .line 130
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 138
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    .line 153
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 222
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;)Z

    .line 223
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setSystolicMmhg(F)Z

    .line 224
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setDiastolicMmhg(F)Z

    .line 225
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setMeanArterialPressureMmhg(F)Z

    .line 226
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setSystolicKpa(F)Z

    .line 227
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setDiastolicKpa(F)Z

    .line 228
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setMeanArterialPressureKpa(F)Z

    .line 229
    invoke-virtual {p0, p8}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setTimeStamp(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 230
    invoke-virtual {p0, p9}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setPulseRate(F)Z

    .line 231
    invoke-virtual {p0, p10}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setUserId(I)Z

    .line 232
    invoke-virtual {p0, p11}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setMeasurementStatus(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;)Z

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;FFFFFFLcom/mediatek/bluetoothgatt/characteristic/DateTime;FILcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;
    .param p2, "systolicMmhg"    # F
    .param p3, "diastolicMmhg"    # F
    .param p4, "meanArterialPressureMmhg"    # F
    .param p5, "systolicKpa"    # F
    .param p6, "diastolicKpa"    # F
    .param p7, "meanArterialPressureKpa"    # F
    .param p8, "timeStamp"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p9, "pulseRate"    # F
    .param p10, "userId"    # I
    .param p11, "measurementStatus"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;
    .param p12, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x2

    .line 251
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    .line 107
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    .line 115
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    .line 130
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 138
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    .line 153
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    .line 264
    invoke-virtual {p0, p12}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 265
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;)Z

    .line 266
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setSystolicMmhg(F)Z

    .line 267
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setDiastolicMmhg(F)Z

    .line 268
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setMeanArterialPressureMmhg(F)Z

    .line 269
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setSystolicKpa(F)Z

    .line 270
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setDiastolicKpa(F)Z

    .line 271
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setMeanArterialPressureKpa(F)Z

    .line 272
    invoke-virtual {p0, p8}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setTimeStamp(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 273
    invoke-virtual {p0, p9}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setPulseRate(F)Z

    .line 274
    invoke-virtual {p0, p10}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setUserId(I)Z

    .line 275
    invoke-virtual {p0, p11}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setMeasurementStatus(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;)Z

    .line 263
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x2

    .line 178
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    .line 107
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    .line 115
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    .line 130
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 138
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    .line 153
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValue([B)Z

    .line 178
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x2

    .line 189
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    .line 107
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    .line 115
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    .line 130
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 138
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    .line 153
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    .line 190
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValue([B)Z

    .line 189
    return-void
.end method


# virtual methods
.method public getDiastolicKpa()F
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatToFloat([B)F

    move-result v0

    return v0
.end method

.method public getDiastolicMmhg()F
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatToFloat([B)F

    move-result v0

    return v0
.end method

.method public getFlags()Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    return-object v0
.end method

.method public getMeanArterialPressureKpa()F
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatToFloat([B)F

    move-result v0

    return v0
.end method

.method public getMeanArterialPressureMmhg()F
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatToFloat([B)F

    move-result v0

    return v0
.end method

.method public getMeasurementStatus()Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    return-object v0
.end method

.method public getPulseRate()F
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatToFloat([B)F

    move-result v0

    return v0
.end method

.method public getSystolicKpa()F
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatToFloat([B)F

    move-result v0

    return v0
.end method

.method public getSystolicMmhg()F
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatToFloat([B)F

    move-result v0

    return v0
.end method

.method public getTimeStamp()Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 330
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 332
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->length()I

    move-result v1

    .line 334
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 335
    add-int/lit8 v0, v1, 0x0

    .line 338
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportSystolicMmhg()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    array-length v1, v3

    .line 340
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 341
    add-int/2addr v0, v1

    .line 344
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportDiastolicMmhg()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    array-length v1, v3

    .line 346
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 347
    add-int/2addr v0, v1

    .line 350
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportMeanArterialPressureMmhg()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    array-length v1, v3

    .line 352
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 353
    add-int/2addr v0, v1

    .line 356
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportSystolicKpa()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 357
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    array-length v1, v3

    .line 358
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 359
    add-int/2addr v0, v1

    .line 362
    .end local v1    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportDiastolicKpa()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 363
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    array-length v1, v3

    .line 364
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 365
    add-int/2addr v0, v1

    .line 368
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportMeanArterialPressureKpa()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 369
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    array-length v1, v3

    .line 370
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 371
    add-int/2addr v0, v1

    .line 374
    .end local v1    # "fieldLen":I
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportTimeStamp()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 375
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 376
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 377
    add-int/2addr v0, v1

    .line 380
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportPulseRate()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 381
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    array-length v1, v3

    .line 382
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 383
    add-int/2addr v0, v1

    .line 386
    .end local v1    # "fieldLen":I
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportUserId()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 387
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    array-length v1, v3

    .line 388
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 389
    add-int/2addr v0, v1

    .line 392
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportMeasurementStatus()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 393
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->length()I

    move-result v1

    .line 394
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 395
    add-int/2addr v0, v1

    .line 398
    .end local v1    # "fieldLen":I
    :cond_a
    return-object v2
.end method

.method public isSupportDiastolicKpa()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 746
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getBloodPressureUnitsFlag()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportDiastolicMmhg()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 644
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getBloodPressureUnitsFlag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportFlags()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportMeanArterialPressureKpa()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 780
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getBloodPressureUnitsFlag()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportMeanArterialPressureMmhg()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 678
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getBloodPressureUnitsFlag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportMeasurementStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 927
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getMeasurementStatusFlag()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPulseRate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 862
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getPulseRateFlag()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportSystolicKpa()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 712
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getBloodPressureUnitsFlag()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportSystolicMmhg()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 610
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getBloodPressureUnitsFlag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportTimeStamp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 828
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getTimeStampFlag()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportUserId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 896
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getUserIdFlag()I

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

    .line 288
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->length()I

    move-result v0

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportSystolicMmhg()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    array-length v2, v2

    .line 288
    :goto_1
    add-int/2addr v2, v0

    .line 292
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportDiastolicMmhg()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    array-length v0, v0

    .line 288
    :goto_2
    add-int/2addr v2, v0

    .line 294
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportMeanArterialPressureMmhg()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    array-length v0, v0

    .line 288
    :goto_3
    add-int/2addr v2, v0

    .line 296
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportSystolicKpa()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    array-length v0, v0

    .line 288
    :goto_4
    add-int/2addr v2, v0

    .line 298
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportDiastolicKpa()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    array-length v0, v0

    .line 288
    :goto_5
    add-int/2addr v2, v0

    .line 300
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportMeanArterialPressureKpa()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    array-length v0, v0

    .line 288
    :goto_6
    add-int/2addr v2, v0

    .line 302
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 303
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v0

    .line 288
    :goto_7
    add-int/2addr v2, v0

    .line 304
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportPulseRate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    array-length v0, v0

    .line 288
    :goto_8
    add-int/2addr v2, v0

    .line 306
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportUserId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 307
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    array-length v0, v0

    .line 288
    :goto_9
    add-int/2addr v0, v2

    .line 308
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportMeasurementStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->length()I

    move-result v1

    .line 288
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 289
    goto :goto_0

    :cond_2
    move v2, v1

    .line 291
    goto :goto_1

    :cond_3
    move v0, v1

    .line 293
    goto :goto_2

    :cond_4
    move v0, v1

    .line 295
    goto :goto_3

    :cond_5
    move v0, v1

    .line 297
    goto :goto_4

    :cond_6
    move v0, v1

    .line 299
    goto :goto_5

    :cond_7
    move v0, v1

    .line 301
    goto :goto_6

    :cond_8
    move v0, v1

    .line 303
    goto :goto_7

    :cond_9
    move v0, v1

    .line 305
    goto :goto_8

    :cond_a
    move v0, v1

    .line 307
    goto :goto_9
.end method

.method public setDiastolicKpa(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 732
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatRangeCheck(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x0

    return v0

    .line 735
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToSfloat(F)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    .line 736
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 737
    const/4 v0, 0x1

    return v0
.end method

.method public setDiastolicMmhg(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 630
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatRangeCheck(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToSfloat(F)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    .line 634
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 635
    const/4 v0, 0x1

    return v0
.end method

.method public setFlags(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    .line 566
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 567
    const/4 v0, 0x1

    return v0
.end method

.method public setMeanArterialPressureKpa(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 766
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatRangeCheck(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    const/4 v0, 0x0

    return v0

    .line 769
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToSfloat(F)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    .line 770
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 771
    const/4 v0, 0x1

    return v0
.end method

.method public setMeanArterialPressureMmhg(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 664
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatRangeCheck(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToSfloat(F)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    .line 668
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public setMeasurementStatus(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    .line 917
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 918
    const/4 v0, 0x1

    return v0
.end method

.method public setPulseRate(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 848
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatRangeCheck(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    const/4 v0, 0x0

    return v0

    .line 851
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToSfloat(F)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    .line 852
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 853
    const/4 v0, 0x1

    return v0
.end method

.method public setSystolicKpa(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 698
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatRangeCheck(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    const/4 v0, 0x0

    return v0

    .line 701
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToSfloat(F)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    .line 702
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 703
    const/4 v0, 0x1

    return v0
.end method

.method public setSystolicMmhg(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 596
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sfloatRangeCheck(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    const/4 v0, 0x0

    return v0

    .line 599
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->floatToSfloat(F)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    .line 600
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeStamp(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    const/4 v0, 0x0

    return v0

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 819
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeStamp([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 800
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    const/4 v0, 0x0

    return v0

    .line 803
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 804
    const/4 v0, 0x1

    return v0
.end method

.method public setUserId(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 882
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    const/4 v0, 0x0

    return v0

    .line 885
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    .line 886
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 887
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 409
    const/4 v2, 0x0

    .line 411
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->length()I

    move-result v1

    .line 414
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    return v4

    .line 418
    :cond_0
    new-array v0, v1, [B

    .line 420
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 421
    add-int/lit8 v2, v1, 0x0

    .line 423
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->setByteArray([B)V

    .line 426
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportSystolicMmhg()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 427
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    array-length v1, v3

    .line 429
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 430
    return v4

    .line 433
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicMmhg:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 434
    add-int/2addr v2, v1

    .line 437
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportDiastolicMmhg()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 438
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    array-length v1, v3

    .line 440
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 441
    return v4

    .line 444
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicMmhg:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 445
    add-int/2addr v2, v1

    .line 448
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportMeanArterialPressureMmhg()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 449
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    array-length v1, v3

    .line 451
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 452
    return v4

    .line 455
    :cond_6
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureMmhg:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 456
    add-int/2addr v2, v1

    .line 459
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportSystolicKpa()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 460
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    array-length v1, v3

    .line 462
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_8

    .line 463
    return v4

    .line 466
    :cond_8
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mSystolicKpa:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 467
    add-int/2addr v2, v1

    .line 470
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportDiastolicKpa()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 471
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    array-length v1, v3

    .line 473
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_a

    .line 474
    return v4

    .line 477
    :cond_a
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mDiastolicKpa:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 478
    add-int/2addr v2, v1

    .line 481
    .end local v1    # "fieldLen":I
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportMeanArterialPressureKpa()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 482
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    array-length v1, v3

    .line 484
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_c

    .line 485
    return v4

    .line 488
    :cond_c
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeanArterialPressureKpa:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 489
    add-int/2addr v2, v1

    .line 492
    .end local v1    # "fieldLen":I
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportTimeStamp()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 493
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 495
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_e

    .line 496
    return v4

    .line 499
    :cond_e
    new-array v0, v1, [B

    .line 501
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 502
    add-int/2addr v2, v1

    .line 504
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mTimeStamp:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    .line 507
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportPulseRate()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 508
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    array-length v1, v3

    .line 510
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_10

    .line 511
    return v4

    .line 514
    :cond_10
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mPulseRate:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 515
    add-int/2addr v2, v1

    .line 518
    .end local v1    # "fieldLen":I
    :cond_11
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportUserId()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 519
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    array-length v1, v3

    .line 521
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_12

    .line 522
    return v4

    .line 525
    :cond_12
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mUserId:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 526
    add-int/2addr v2, v1

    .line 529
    .end local v1    # "fieldLen":I
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->isSupportMeasurementStatus()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 530
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->length()I

    move-result v1

    .line 532
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_14

    .line 533
    return v4

    .line 536
    :cond_14
    new-array v0, v1, [B

    .line 538
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 539
    add-int/2addr v2, v1

    .line 541
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->mMeasurementStatus:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->setByteArray([B)V

    .line 544
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 545
    const/4 v3, 0x1

    return v3
.end method
