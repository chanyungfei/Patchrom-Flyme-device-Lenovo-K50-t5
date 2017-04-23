.class public Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
.super Ljava/lang/Object;
.source "ParcelBluetoothGattService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ParcelBluetoothGattService"

.field private static final VDGB:Z


# instance fields
.field protected mCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field protected mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected mHandles:I

.field protected mIncludedServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstanceId:I

.field protected mServiceType:I

.field protected mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService$1;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService$1;-><init>()V

    .line 309
    sput-object v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "instanceId"    # I
    .param p4, "serviceType"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mHandles:I

    .line 114
    iput-object p1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 115
    iput-object p2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mUuid:Landroid/os/ParcelUuid;

    .line 116
    iput p3, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mInstanceId:I

    .line 117
    iput p4, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mServiceType:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 113
    return-void
.end method

.method public static from(Landroid/bluetooth/BluetoothGattService;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .locals 1
    .param p0, "gattService"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->from(Landroid/bluetooth/BluetoothGattService;Z)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/bluetooth/BluetoothGattService;Z)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .locals 14
    .param p0, "gattService"    # Landroid/bluetooth/BluetoothGattService;
    .param p1, "isDeep"    # Z

    .prologue
    .line 269
    const/4 v2, 0x0

    .line 272
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "getDevice"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 273
    .local v8, "method":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 274
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v8, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v7, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    new-instance v11, Landroid/os/ParcelUuid;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 281
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v12

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v13

    .line 280
    invoke-direct {v7, v2, v11, v12, v13}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;II)V

    .line 283
    .local v7, "instance":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v11

    if-nez v11, :cond_0

    .line 286
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v6

    .line 288
    .local v6, "includedSrv":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "srv$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothGattService;

    .line 289
    .local v9, "srv":Landroid/bluetooth/BluetoothGattService;
    invoke-static {v9, p1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->from(Landroid/bluetooth/BluetoothGattService;Z)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->addIncludedService(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;)V

    goto :goto_1

    .line 275
    .end local v6    # "includedSrv":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .end local v7    # "instance":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .end local v9    # "srv":Landroid/bluetooth/BluetoothGattService;
    .end local v10    # "srv$iterator":Ljava/util/Iterator;
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "ParcelBluetoothGattService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "instance":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 296
    .local v1, "charList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "gattChar$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 298
    .local v4, "gattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v4, p1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->from(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    move-result-object v11

    .line 297
    invoke-virtual {v7, v11}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->addCharacteristic(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)V

    goto :goto_2

    .line 302
    .end local v1    # "charList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v4    # "gattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v5    # "gattChar$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v7
.end method


# virtual methods
.method public addCharacteristic(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "gattChar"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public addIncludedService(Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;)V
    .locals 1
    .param p1, "service"    # Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getCharacteristic(Landroid/os/ParcelUuid;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 150
    iget-object v2, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "characteristic$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 151
    .local v0, "characteristic":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    return-object v0

    .line 155
    .end local v0    # "characteristic":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getCharacteristics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mCharacteristics:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mInstanceId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mServiceType:I

    return v0
.end method

.method public getUuid()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Parcel Service\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v1, ">UUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string/jumbo v1, ">InstanceID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget v1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v1, ">ServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v1, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unpack()Landroid/bluetooth/BluetoothGattService;
    .locals 14

    .prologue
    .line 220
    new-instance v3, Landroid/bluetooth/BluetoothGattService;

    iget-object v9, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mServiceType:I

    invoke-direct {v3, v9, v10}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    .line 222
    .local v3, "instance":Landroid/bluetooth/BluetoothGattService;
    iget v9, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mInstanceId:I

    invoke-virtual {v3, v9}, Landroid/bluetooth/BluetoothGattService;->setInstanceId(I)V

    .line 225
    :try_start_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "mDevice"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 226
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 227
    iget-object v9, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    iget v9, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mServiceType:I

    if-nez v9, :cond_0

    .line 234
    iget-object v9, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "srv$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    .line 235
    .local v7, "srv":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    invoke-virtual {v7}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->unpack()Landroid/bluetooth/BluetoothGattService;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/bluetooth/BluetoothGattService;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    goto :goto_1

    .line 228
    .end local v7    # "srv":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .end local v8    # "srv$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "ParcelBluetoothGattService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v9, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "parcelChar$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 241
    .local v5, "parcelChar":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    invoke-virtual {v5}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->unpack()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 246
    .local v2, "gattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    :try_start_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "setService"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    .line 247
    const-class v12, Landroid/bluetooth/BluetoothGattService;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 246
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 248
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 249
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v4, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_3
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_2

    .line 250
    :catch_1
    move-exception v0

    .line 251
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "ParcelBluetoothGattService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "gattChar":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v5    # "parcelChar":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :cond_1
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 182
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mInstanceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mHandles:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 173
    return-void
.end method
