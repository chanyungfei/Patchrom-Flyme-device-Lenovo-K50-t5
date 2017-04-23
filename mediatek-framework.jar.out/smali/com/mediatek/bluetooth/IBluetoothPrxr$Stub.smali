.class public abstract Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrxr.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBluetoothPrxr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBluetoothPrxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBluetoothPrxr"

.field static final TRANSACTION_disableService:I = 0x4

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_disconnectByAddr:I = 0xa

.field static final TRANSACTION_enableService:I = 0x3

.field static final TRANSACTION_getConnectedDevices:I = 0x5

.field static final TRANSACTION_getProfileManagerState:I = 0x7

.field static final TRANSACTION_getServiceState:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_responseAuthorizeInd:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothPrxr;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBluetoothPrxr;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/bluetooth/IBluetoothPrxr;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 45
    :sswitch_0
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v8

    .line 50
    :sswitch_1
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    sget-object v7, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 58
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->registerCallback(Landroid/os/ResultReceiver;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    return v8

    .line 56
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_0

    .line 64
    .end local v1    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_2
    const-string/jumbo v9, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 67
    sget-object v9, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 72
    :goto_1
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->unregisterCallback(Landroid/os/ResultReceiver;)Z

    move-result v5

    .line 73
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v5, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return v8

    .line 70
    .end local v5    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 79
    .end local v1    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_3
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->enableService()I

    move-result v4

    .line 81
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v8

    .line 87
    .end local v4    # "_result":I
    :sswitch_4
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->disableService()I

    move-result v4

    .line 89
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v8

    .line 95
    .end local v4    # "_result":I
    :sswitch_5
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 97
    .local v6, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 99
    return v8

    .line 103
    .end local v6    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->getServiceState()I

    move-result v4

    .line 105
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return v8

    .line 111
    .end local v4    # "_result":I
    :sswitch_7
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->getProfileManagerState(Ljava/lang/String;)I

    move-result v4

    .line 115
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return v8

    .line 121
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_8
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 126
    .local v3, "_arg1":B
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->responseAuthorizeInd(IB)I

    move-result v4

    .line 127
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return v8

    .line 133
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":B
    .end local v4    # "_result":I
    :sswitch_9
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->disconnect(I)I

    move-result v4

    .line 137
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return v8

    .line 143
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_a
    const-string/jumbo v7, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->disconnectByAddr(Ljava/lang/String;)I

    move-result v4

    .line 147
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v8

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
