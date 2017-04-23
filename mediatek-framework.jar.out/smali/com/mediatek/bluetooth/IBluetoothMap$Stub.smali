.class public abstract Lcom/mediatek/bluetooth/IBluetoothMap$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMap.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBluetoothMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothMap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBluetoothMap"

.field static final TRANSACTION_disconnect:I = 0x3

.field static final TRANSACTION_getConnectedDevices:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_isConnected:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.mediatek.bluetooth.IBluetoothMap"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBluetoothMap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothMap;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.mediatek.bluetooth.IBluetoothMap"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/bluetooth/IBluetoothMap;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/bluetooth/IBluetoothMap$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/IBluetoothMap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 42
    :sswitch_0
    const-string/jumbo v4, "com.mediatek.bluetooth.IBluetoothMap"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v5

    .line 47
    :sswitch_1
    const-string/jumbo v4, "com.mediatek.bluetooth.IBluetoothMap"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothMap$Stub;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 49
    .local v3, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 51
    return v5

    .line 55
    .end local v3    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothMap"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 63
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothMap$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 64
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return v5

    .line 61
    .end local v2    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothMap"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 78
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothMap$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 79
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v5

    .line 76
    .end local v2    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 85
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v4, "com.mediatek.bluetooth.IBluetoothMap"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 88
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 93
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothMap$Stub;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 94
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v5

    .line 91
    .end local v1    # "_result":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
