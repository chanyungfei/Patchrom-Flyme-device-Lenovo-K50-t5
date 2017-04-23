.class public Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "BloodPressureMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfMeasurementStatus"
.end annotation


# static fields
.field private static final sLength:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;
    .param p2, "value"    # [B

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    .line 1111
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 1112
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->setByteArray([B)V

    .line 1110
    return-void
.end method


# virtual methods
.method public getBodyMovementDetectionFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1121
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getCuffFitDetectionFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1145
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getIrregularPulseDetectionFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 1169
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getMeasurementPositionDetectionFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1217
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getPulseRateRangeDetectionFlags()I
    .locals 2

    .prologue
    .line 1193
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x2

    return v0
.end method

.method public setBodyMovementDetectionFlag(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 1132
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    return v1

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 1136
    const/4 v0, 0x1

    return v0
.end method

.method public setCuffFitDetectionFlag(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1156
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    const/4 v0, 0x0

    return v0

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 1160
    return v1
.end method

.method public setIrregularPulseDetectionFlag(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 1180
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    const/4 v0, 0x0

    return v0

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 1184
    const/4 v0, 0x1

    return v0
.end method

.method public setMeasurementPositionDetectionFlag(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x5

    .line 1228
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    const/4 v0, 0x0

    return v0

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 1232
    const/4 v0, 0x1

    return v0
.end method

.method public setPulseRateRangeDetectionFlags(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1204
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    const/4 v0, 0x0

    return v0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfMeasurementStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 1208
    const/4 v0, 0x1

    return v0
.end method
