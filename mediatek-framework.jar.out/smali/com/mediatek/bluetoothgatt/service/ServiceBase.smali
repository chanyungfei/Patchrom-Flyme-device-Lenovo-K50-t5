.class public abstract Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.super Ljava/lang/Object;
.source "ServiceBase.java"


# static fields
.field public static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ServiceBase"


# instance fields
.field private mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 69
    invoke-direct {v0, v1, v2, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;-><init>(Ljava/util/UUID;II)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 57
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->loadServiceConfig()V

    .line 56
    return-void
.end method


# virtual methods
.method addCharacteristic(ZLjava/util/UUID;II)V
    .locals 1
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->addCharacteristic(ZLjava/util/UUID;II)V

    .line 80
    return-void
.end method

.method addCharacteristic(ZLjava/util/UUID;II[B)V
    .locals 6
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I
    .param p5, "value"    # [B

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 85
    return-void
.end method

.method addDescriptor(ZLjava/util/UUID;I)V
    .locals 1
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "permissions"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->addDescriptor(ZLjava/util/UUID;I)V

    .line 89
    return-void
.end method

.method addDescriptor(ZLjava/util/UUID;I[B)V
    .locals 1
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "permissions"    # I
    .param p4, "value"    # [B

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->addDescriptor(ZLjava/util/UUID;I[B)V

    .line 93
    return-void
.end method

.method addIncludeService(ZLjava/util/UUID;II)V
    .locals 1
    .param p1, "support"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "serviceType"    # I
    .param p4, "instanceId"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->addIncludeService(ZLjava/util/UUID;II)V

    .line 76
    return-void
.end method

.method public getService()Landroid/bluetooth/BluetoothGattService;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 103
    iget-object v6, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    iget-boolean v6, v6, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mSupport:Z

    if-nez v6, :cond_0

    .line 104
    return-object v7

    .line 107
    :cond_0
    new-instance v5, Landroid/bluetooth/BluetoothGattService;

    iget-object v6, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    iget-object v6, v6, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mUuid:Ljava/util/UUID;

    iget-object v7, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    iget v7, v7, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->mServiceType:I

    invoke-direct {v5, v6, v7}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    .line 111
    .local v5, "service":Landroid/bluetooth/BluetoothGattService;
    const/4 v0, 0x0

    .line 113
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v6, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    invoke-virtual {v6}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->getEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 114
    .local v2, "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    if-eqz v0, :cond_2

    iget v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    if-eq v6, v9, :cond_2

    .line 115
    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 116
    const/4 v0, 0x0

    .line 119
    :cond_2
    iget v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 120
    iget-boolean v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    if-eqz v6, :cond_1

    .line 122
    new-instance v4, Landroid/bluetooth/BluetoothGattService;

    iget-object v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    iget v7, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mServiceType:I

    invoke-direct {v4, v6, v7}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    .line 125
    .local v4, "includeService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothGattService;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    goto :goto_0

    .line 127
    .end local v4    # "includeService":Landroid/bluetooth/BluetoothGattService;
    :cond_3
    iget v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 128
    iget-boolean v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    if-eqz v6, :cond_1

    .line 129
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 130
    iget-object v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    .line 131
    iget v7, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mProperties:I

    .line 132
    iget v8, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mPermissions:I

    .line 129
    invoke-direct {v0, v6, v7, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 133
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mValue:[B

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    goto :goto_0

    .line 135
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_4
    iget v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    if-ne v6, v9, :cond_1

    .line 136
    iget-boolean v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 137
    new-instance v1, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 138
    iget-object v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    .line 139
    iget v7, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mPermissions:I

    .line 137
    invoke-direct {v1, v6, v7}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    .line 141
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    iget-object v6, v2, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mValue:[B

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 142
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 147
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v2    # "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    :cond_5
    if-eqz v0, :cond_6

    .line 148
    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 151
    :cond_6
    return-object v5
.end method

.method public getServiceCfg()Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->mCfg:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    return-object v0
.end method

.method public abstract getUuid()Ljava/util/UUID;
.end method

.method protected abstract loadServiceConfig()V
.end method
