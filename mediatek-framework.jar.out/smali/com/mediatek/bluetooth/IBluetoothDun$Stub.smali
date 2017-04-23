.class public abstract Lcom/mediatek/bluetooth/IBluetoothDun$Stub;
.super Landroid/os/Binder;
.source "IBluetoothDun.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBluetoothDun;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothDun$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBluetoothDun"

.field static final TRANSACTION_dunDisconnect:I = 0x1

.field static final TRANSACTION_dunGetConnectedDevice:I = 0x3

.field static final TRANSACTION_dunGetState:I = 0x2

.field static final TRANSACTION_isTetheringOn:I = 0x4

.field static final TRANSACTION_setBluetoothTethering:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.mediatek.bluetooth.IBluetoothDun"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBluetoothDun$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothDun;
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
    const-string/jumbo v1, "com.mediatek.bluetooth.IBluetoothDun"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/bluetooth/IBluetoothDun;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/bluetooth/IBluetoothDun$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/IBluetoothDun$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "com.mediatek.bluetooth.IBluetoothDun"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v5

    .line 50
    :sswitch_1
    const-string/jumbo v4, "com.mediatek.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothDun$Stub;->dunDisconnect()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v5

    .line 57
    :sswitch_2
    const-string/jumbo v4, "com.mediatek.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothDun$Stub;->dunGetState()I

    move-result v1

    .line 59
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v5

    .line 65
    .end local v1    # "_result":I
    :sswitch_3
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothDun$Stub;->dunGetConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 67
    .local v2, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {v2, p3, v5}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    :goto_0
    return v5

    .line 73
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v2    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothDun$Stub;->isTetheringOn()Z

    move-result v3

    .line 81
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v5

    .line 87
    .end local v3    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "com.mediatek.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 90
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothDun$Stub;->setBluetoothTethering(Z)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v5

    .line 89
    .end local v0    # "_arg0":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Z
    goto :goto_1

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
