.class public abstract Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSimap.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBluetoothSimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBluetoothSimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothSimap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBluetoothSimap"

.field static final TRANSACTION_connect:I = 0x5

.field static final TRANSACTION_disableService:I = 0x2

.field static final TRANSACTION_disconnect:I = 0x6

.field static final TRANSACTION_enableService:I = 0x1

.field static final TRANSACTION_getClient:I = 0x4

.field static final TRANSACTION_getSIMIndex:I = 0x9

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_isConnected:I = 0x7

.field static final TRANSACTION_isServiceStarted:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0xa

.field static final TRANSACTION_selectSIM:I = 0x8

.field static final TRANSACTION_startSimapService:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothSimap;
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
    const-string/jumbo v1, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/mediatek/bluetooth/IBluetoothSimap;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 47
    :sswitch_0
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v7

    .line 52
    :sswitch_1
    const-string/jumbo v8, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->enableService()Z

    move-result v5

    .line 54
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v7

    .line 60
    .end local v5    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->disableService()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v7

    .line 67
    :sswitch_3
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->getState()I

    move-result v3

    .line 69
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v7

    .line 75
    .end local v3    # "_result":I
    :sswitch_4
    const-string/jumbo v8, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->getClient()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 77
    .local v4, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v4, p3, v7}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    :goto_0
    return v7

    .line 83
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v4    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string/jumbo v8, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    .line 92
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 97
    :goto_1
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    .line 98
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v5, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v7

    .line 95
    .end local v5    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 104
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->disconnect()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v7

    .line 111
    :sswitch_7
    const-string/jumbo v8, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    .line 114
    sget-object v8, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 119
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    .line 120
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v5, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return v7

    .line 117
    .end local v5    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 126
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string/jumbo v8, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->selectSIM(I)Z

    move-result v5

    .line 130
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v5, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return v7

    .line 136
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_9
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->getSIMIndex()I

    move-result v3

    .line 138
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return v7

    .line 144
    .end local v3    # "_result":I
    :sswitch_a
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/bluetooth/IBluetoothSimapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothSimapCallback;

    move-result-object v2

    .line 147
    .local v2, "_arg0":Lcom/mediatek/bluetooth/IBluetoothSimapCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->registerCallback(Lcom/mediatek/bluetooth/IBluetoothSimapCallback;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v7

    .line 153
    .end local v2    # "_arg0":Lcom/mediatek/bluetooth/IBluetoothSimapCallback;
    :sswitch_b
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/bluetooth/IBluetoothSimapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothSimapCallback;

    move-result-object v2

    .line 156
    .restart local v2    # "_arg0":Lcom/mediatek/bluetooth/IBluetoothSimapCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->unregisterCallback(Lcom/mediatek/bluetooth/IBluetoothSimapCallback;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v7

    .line 162
    .end local v2    # "_arg0":Lcom/mediatek/bluetooth/IBluetoothSimapCallback;
    :sswitch_c
    const-string/jumbo v8, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->isServiceStarted()Z

    move-result v5

    .line 164
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v5, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return v7

    .line 170
    .end local v5    # "_result":Z
    :sswitch_d
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->startSimapService()V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    return v7

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
