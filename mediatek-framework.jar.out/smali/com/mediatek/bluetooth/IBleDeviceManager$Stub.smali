.class public abstract Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IBleDeviceManager.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBleDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBleDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBleDeviceManager"

.field static final TRANSACTION_abortReliableWrite:I = 0x11

.field static final TRANSACTION_addGattDevice:I = 0x12

.field static final TRANSACTION_beginReliableWrite:I = 0xf

.field static final TRANSACTION_connectDevice:I = 0x3

.field static final TRANSACTION_deleteGattDevice:I = 0x13

.field static final TRANSACTION_disconnectDevice:I = 0x4

.field static final TRANSACTION_discoverServices:I = 0x5

.field static final TRANSACTION_executeReliableWrite:I = 0x10

.field static final TRANSACTION_getService:I = 0x7

.field static final TRANSACTION_getServices:I = 0x6

.field static final TRANSACTION_getState:I = 0x8

.field static final TRANSACTION_readCharacteristic:I = 0x9

.field static final TRANSACTION_readDescriptor:I = 0xb

.field static final TRANSACTION_readRemoteRssi:I = 0xe

.field static final TRANSACTION_registerClient:I = 0x1

.field static final TRANSACTION_setCharacteristicNotification:I = 0xd

.field static final TRANSACTION_unregisterClient:I = 0x2

.field static final TRANSACTION_writeCharacteristic:I = 0xa

.field static final TRANSACTION_writeDescriptor:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBleDeviceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/mediatek/bluetooth/IBleDeviceManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 430
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 47
    :sswitch_0
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    return v1

    .line 52
    :sswitch_1
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 68
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/IBleDeviceManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

    move-result-object v11

    .line 69
    .local v11, "_arg2":Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v11}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;)I

    move-result v13

    .line 70
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v1, 0x1

    return v1

    .line 58
    .end local v11    # "_arg2":Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;
    .end local v13    # "_result":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 65
    .end local v8    # "_arg0":Landroid/os/ParcelUuid;
    :cond_1
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 76
    .end local v9    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->unregisterClient(I)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v1, 0x1

    return v1

    .line 85
    .end local v2    # "_arg0":I
    :sswitch_3
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 95
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->connectDevice(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 96
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v16, :cond_3

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v1, 0x1

    return v1

    .line 93
    .end local v16    # "_result":Z
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 97
    .end local v9    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .restart local v16    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 102
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 112
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->disconnectDevice(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 113
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v16, :cond_5

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v1, 0x1

    return v1

    .line 110
    .end local v16    # "_result":Z
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 114
    .end local v9    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .restart local v16    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 119
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_5
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 129
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->discoverServices(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 130
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v16, :cond_7

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v1, 0x1

    return v1

    .line 127
    .end local v16    # "_result":Z
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 131
    .end local v9    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .restart local v16    # "_result":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    .line 136
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_6
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 139
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 144
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->getServices(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v15

    .line 145
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 147
    const/4 v1, 0x1

    return v1

    .line 142
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    :cond_8
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 151
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 160
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 161
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .line 166
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->getService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    move-result-object v14

    .line 167
    .local v14, "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v14, :cond_b

    .line 169
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->writeToParcel(Landroid/os/Parcel;I)V

    .line 175
    :goto_b
    const/4 v1, 0x1

    return v1

    .line 157
    .end local v14    # "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 164
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_a
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_a

    .line 173
    .end local v10    # "_arg1":Landroid/os/ParcelUuid;
    .restart local v14    # "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 179
    .end local v14    # "_result":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :sswitch_8
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 184
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 189
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->getState(ILandroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 190
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v1, 0x1

    return v1

    .line 187
    .end local v13    # "_result":I
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 196
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_9
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 203
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 209
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 210
    sget-object v1, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 215
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->readCharacteristic(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)Z

    move-result v16

    .line 216
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v16, :cond_f

    const/4 v1, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v1, 0x1

    return v1

    .line 206
    .end local v16    # "_result":Z
    :cond_d
    const/4 v4, 0x0

    .local v4, "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 213
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :cond_e
    const/4 v5, 0x0

    .local v5, "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    goto :goto_e

    .line 217
    .end local v5    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .restart local v16    # "_result":Z
    :cond_f
    const/4 v1, 0x0

    goto :goto_f

    .line 222
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_a
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 228
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 229
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 235
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 236
    sget-object v1, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 241
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->writeCharacteristic(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;)Z

    move-result v16

    .line 242
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v16, :cond_12

    const/4 v1, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    const/4 v1, 0x1

    return v1

    .line 232
    .end local v16    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 239
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :cond_11
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    goto :goto_11

    .line 243
    .end local v5    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    .restart local v16    # "_result":Z
    :cond_12
    const/4 v1, 0x0

    goto :goto_12

    .line 248
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_b
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 255
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 261
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 262
    sget-object v1, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .line 267
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v12}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->readDescriptor(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z

    move-result v16

    .line 268
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v16, :cond_15

    const/4 v1, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v1, 0x1

    return v1

    .line 258
    .end local v16    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .line 265
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :cond_14
    const/4 v12, 0x0

    .local v12, "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    goto :goto_14

    .line 269
    .end local v12    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .restart local v16    # "_result":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_15

    .line 274
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_c
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 281
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 287
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 288
    sget-object v1, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;

    .line 293
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v12}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->writeDescriptor(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;)Z

    move-result v16

    .line 294
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v16, :cond_18

    const/4 v1, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v1, 0x1

    return v1

    .line 284
    .end local v16    # "_result":Z
    :cond_16
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 291
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :cond_17
    const/4 v12, 0x0

    .restart local v12    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    goto :goto_17

    .line 295
    .end local v12    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattDescriptor;
    .restart local v16    # "_result":Z
    :cond_18
    const/4 v1, 0x0

    goto :goto_18

    .line 300
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_d
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 306
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 307
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 313
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 314
    sget-object v1, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;

    .line 320
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_1b
    move-object/from16 v1, p0

    .line 321
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->setCharacteristicNotification(IILandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;Z)Z

    move-result v16

    .line 322
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v16, :cond_1c

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v1, 0x1

    return v1

    .line 310
    .end local v6    # "_arg4":Z
    .end local v16    # "_result":Z
    :cond_19
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    .line 317
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :cond_1a
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    goto :goto_1a

    .line 320
    .end local v5    # "_arg3":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattCharacteristic;
    :cond_1b
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Z
    goto :goto_1b

    .line 323
    .restart local v16    # "_result":Z
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1c

    .line 328
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v6    # "_arg4":Z
    .end local v16    # "_result":Z
    :sswitch_e
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 335
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 340
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->readRemoteRssi(IILandroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 341
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v16, :cond_1e

    const/4 v1, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v1, 0x1

    return v1

    .line 338
    .end local v16    # "_result":Z
    :cond_1d
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1d

    .line 342
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .restart local v16    # "_result":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1e

    .line 347
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_f
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 354
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 359
    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->beginReliableWrite(IILandroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 360
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v16, :cond_20

    const/4 v1, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v1, 0x1

    return v1

    .line 357
    .end local v16    # "_result":Z
    :cond_1f
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1f

    .line 361
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .restart local v16    # "_result":Z
    :cond_20
    const/4 v1, 0x0

    goto :goto_20

    .line 366
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_10
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 372
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    .line 373
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 378
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->executeReliableWrite(IILandroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 379
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v16, :cond_22

    const/4 v1, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v1, 0x1

    return v1

    .line 376
    .end local v16    # "_result":Z
    :cond_21
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_21

    .line 380
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    .restart local v16    # "_result":Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_22

    .line 385
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_11
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 391
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    .line 392
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 397
    :goto_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->abortReliableWrite(IILandroid/bluetooth/BluetoothDevice;)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/4 v1, 0x1

    return v1

    .line 395
    :cond_23
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    goto :goto_23

    .line 403
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothDevice;
    :sswitch_12
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    .line 406
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 411
    :goto_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->addGattDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v1, 0x1

    return v1

    .line 409
    :cond_24
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_24

    .line 417
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_13
    const-string/jumbo v1, "com.mediatek.bluetooth.IBleDeviceManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    .line 420
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 425
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->deleteGattDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    const/4 v1, 0x1

    return v1

    .line 423
    :cond_25
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_25

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
