.class public abstract Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub;
.super Landroid/os/Binder;
.source "IBluetoothFtpCtrl.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBluetoothFtpCtrl"

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_getCurrentDevice:I = 0x2

.field static final TRANSACTION_getState:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "com.mediatek.bluetooth.IBluetoothFtpCtrl"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    const-string/jumbo v1, "com.mediatek.bluetooth.IBluetoothFtpCtrl"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 32
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 44
    :sswitch_0
    const-string/jumbo v3, "com.mediatek.bluetooth.IBluetoothFtpCtrl"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v4

    .line 49
    :sswitch_1
    const-string/jumbo v3, "com.mediatek.bluetooth.IBluetoothFtpCtrl"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub;->getState()I

    move-result v1

    .line 51
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return v4

    .line 57
    .end local v1    # "_result":I
    :sswitch_2
    const-string/jumbo v3, "com.mediatek.bluetooth.IBluetoothFtpCtrl"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 59
    .local v2, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v2, p3, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_0
    return v4

    .line 65
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v2    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string/jumbo v3, "com.mediatek.bluetooth.IBluetoothFtpCtrl"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 79
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v4

    .line 77
    :cond_1
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 85
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v3, "com.mediatek.bluetooth.IBluetoothFtpCtrl"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 93
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v4

    .line 91
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
