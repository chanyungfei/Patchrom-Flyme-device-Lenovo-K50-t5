.class public Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
.super Ljava/lang/Object;
.source "ServiceCfg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    }
.end annotation


# static fields
.field public static final TYPE_CHARACTERISTIC:I = 0x2

.field public static final TYPE_DESCRIPTOR:I = 0x3

.field public static final TYPE_SERVICE:I = 0x1

.field public static final TYPE_UNDEFINED:I


# instance fields
.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;",
            ">;"
        }
    .end annotation
.end field

.field mInstanceId:I

.field mServiceType:I

.field mSupport:Z

.field final mUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;II)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "serviceType"    # I

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mSupport:Z

    .line 59
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mServiceType:I

    .line 60
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mInstanceId:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    .line 261
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mUuid:Ljava/util/UUID;

    .line 262
    iput p2, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mInstanceId:I

    .line 263
    iput p3, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mServiceType:I

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    .line 260
    return-void
.end method


# virtual methods
.method addCharacteristic(ZLjava/util/UUID;II)V
    .locals 8
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 309
    iget-object v7, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;-><init>(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;IZLjava/util/UUID;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method addCharacteristic(ZLjava/util/UUID;II[B)V
    .locals 9
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I
    .param p5, "value"    # [B

    .prologue
    .line 314
    iget-object v8, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;-><init>(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;IZLjava/util/UUID;II[B)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method addDescriptor(ZLjava/util/UUID;I)V
    .locals 8
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "permissions"    # I

    .prologue
    .line 318
    iget-object v7, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;-><init>(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;IZLjava/util/UUID;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method addDescriptor(ZLjava/util/UUID;I[B)V
    .locals 9
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "permissions"    # I
    .param p4, "value"    # [B

    .prologue
    .line 322
    iget-object v8, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;-><init>(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;IZLjava/util/UUID;II[B)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method addIncludeService(ZLjava/util/UUID;II)V
    .locals 7
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "serviceType"    # I
    .param p4, "instanceId"    # I

    .prologue
    .line 305
    iget-object v6, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;-><init>(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;ZLjava/util/UUID;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public cfgCharacteristic(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 4
    .param p1, "charUuid"    # Ljava/util/UUID;

    .prologue
    .line 347
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 348
    .local v0, "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    iget-object v2, v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 349
    return-object v0

    .line 352
    .end local v0    # "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public cfgDescriptor(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 5
    .param p1, "charUuid"    # Ljava/util/UUID;
    .param p2, "descrUuid"    # Ljava/util/UUID;

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, "findCharacteristic":Z
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 365
    .local v0, "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    iget v3, v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 366
    iget-object v3, v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    const/4 v2, 0x1

    goto :goto_0

    .line 369
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 371
    :cond_2
    iget v3, v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 372
    iget-object v3, v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 373
    return-object v0

    .line 376
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 379
    .end local v0    # "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    :cond_4
    const/4 v3, 0x0

    return-object v3
.end method

.method public cfgIncludeService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 4
    .param p1, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    .line 332
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 333
    .local v0, "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    iget-object v2, v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 334
    return-object v0

    .line 337
    .end local v0    # "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method clear()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    return-void
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public setInstanceId(I)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
    .locals 0
    .param p1, "instanceId"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mInstanceId:I

    .line 301
    return-object p0
.end method

.method public setServiceType(I)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
    .locals 0
    .param p1, "serviceType"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mServiceType:I

    .line 290
    return-object p0
.end method

.method public setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mSupport:Z

    .line 279
    return-object p0
.end method
