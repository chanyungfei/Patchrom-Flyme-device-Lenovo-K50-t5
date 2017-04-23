.class public Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "AlertCategoryIdBitMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfCategoryIdBitMask0"
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
    .line 343
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;
    .param p2, "value"    # [B

    .prologue
    .line 350
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .line 351
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 352
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setByteArray([B)V

    .line 350
    return-void
.end method


# virtual methods
.method public getCall()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 433
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEmail()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 385
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getMissedCall()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 457
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNews()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 409
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getSchedule()I
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 529
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getSimpleAlert()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getSmsMms()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 481
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getVoiceMail()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 505
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public setCall(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 444
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    return v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public setEmail(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 396
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 400
    return v1
.end method

.method public setMissedCall(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x4

    .line 468
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    return v0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public setNews(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 420
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    return v0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public setSchedule(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x7

    .line 540
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x0

    return v0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method public setSimpleAlert(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    return v1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public setSmsMms(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x5

    .line 492
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public setVoiceMail(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x6

    .line 516
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x0

    return v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 520
    const/4 v0, 0x1

    return v0
.end method
