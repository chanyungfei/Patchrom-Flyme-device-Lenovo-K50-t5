.class public Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "AlertCategoryIdBitMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfCategoryIdBitMask1"
.end annotation


# static fields
.field private static final sLength:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;
    .param p2, "value"    # [B

    .prologue
    .line 575
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .line 576
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 577
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->setByteArray([B)V

    .line 575
    return-void
.end method


# virtual methods
.method public getHighPrioritizedAlert()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getInstantMessage()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 610
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public setHighPrioritizedAlert(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 597
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    return v1

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantMessage(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 621
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    const/4 v0, 0x0

    return v0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 625
    return v1
.end method
