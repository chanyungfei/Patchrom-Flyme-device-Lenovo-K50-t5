.class public Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "AlertStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfAlertStatus"
.end annotation


# static fields
.field private static final sLength:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;
    .param p2, "value"    # [B

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    .line 283
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 284
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->setByteArray([B)V

    .line 282
    return-void
.end method


# virtual methods
.method public getDisplayAlertStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 341
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getRingerState()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getVibrateState()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 317
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public setDisplayAlertStatus(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 352
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    return v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->updateGattCharacteristic()V

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public setRingerState(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    return v1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->updateGattCharacteristic()V

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public setVibrateState(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 328
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->updateGattCharacteristic()V

    .line 332
    return v1
.end method
