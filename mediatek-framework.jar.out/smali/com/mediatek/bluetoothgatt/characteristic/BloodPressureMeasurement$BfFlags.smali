.class public Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "BloodPressureMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;
    .param p2, "value"    # [B

    .prologue
    .line 957
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    .line 958
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 959
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->setByteArray([B)V

    .line 957
    return-void
.end method


# virtual methods
.method public getBloodPressureUnitsFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 968
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getMeasurementStatusFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 1064
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getPulseRateFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 1016
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTimeStampFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 992
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getUserIdFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 1040
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x1

    return v0
.end method

.method public setBloodPressureUnitsFlag(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 979
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    return v1

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 983
    const/4 v0, 0x1

    return v0
.end method

.method public setMeasurementStatusFlag(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x4

    .line 1075
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    const/4 v0, 0x0

    return v0

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 1079
    const/4 v0, 0x1

    return v0
.end method

.method public setPulseRateFlag(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 1027
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    const/4 v0, 0x0

    return v0

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 1031
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeStampFlag(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1003
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1004
    const/4 v0, 0x0

    return v0

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 1007
    return v1
.end method

.method public setUserIdFlag(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 1051
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    const/4 v0, 0x0

    return v0

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->updateGattCharacteristic()V

    .line 1055
    const/4 v0, 0x1

    return v0
.end method
