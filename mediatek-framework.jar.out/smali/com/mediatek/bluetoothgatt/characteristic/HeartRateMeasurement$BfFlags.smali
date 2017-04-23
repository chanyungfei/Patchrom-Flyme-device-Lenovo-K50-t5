.class public Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "HeartRateMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;
    .param p2, "value"    # [B

    .prologue
    .line 533
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    .line 534
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 535
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->setByteArray([B)V

    .line 533
    return-void
.end method


# virtual methods
.method public getEnergyExpendedStatusBit()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 592
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getHeartRateValueFormatBit()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getRrIntervalBit()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 616
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getSensorContactStatusBits()I
    .locals 2

    .prologue
    .line 568
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public setEnergyExpendedStatusBit(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 603
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    const/4 v0, 0x0

    return v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;->updateGattCharacteristic()V

    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method public setHeartRateValueFormatBit(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    return v1

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;->updateGattCharacteristic()V

    .line 559
    const/4 v0, 0x1

    return v0
.end method

.method public setRrIntervalBit(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x4

    .line 627
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    const/4 v0, 0x0

    return v0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;->updateGattCharacteristic()V

    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method public setSensorContactStatusBits(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 579
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x0

    return v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;->updateGattCharacteristic()V

    .line 583
    return v1
.end method
