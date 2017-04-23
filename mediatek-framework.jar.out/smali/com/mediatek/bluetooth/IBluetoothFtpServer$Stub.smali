.class public abstract Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;
.super Landroid/os/Binder;
.source "IBluetoothFtpServer.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBluetoothFtpServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBluetoothFtpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBluetoothFtpServer"

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_enable:I = 0x4

.field static final TRANSACTION_getName:I = 0x1

.field static final TRANSACTION_getPermission:I = 0x8

.field static final TRANSACTION_getStatus:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_setPermission:I = 0x7

.field static final TRANSACTION_setRootDir:I = 0x9

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothFtpServer;
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
    const-string/jumbo v1, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBluetoothFtpServer;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/bluetooth/IBluetoothFtpServer;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 45
    :sswitch_0
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v7

    .line 50
    :sswitch_1
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->getName()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v7

    .line 58
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback;

    move-result-object v1

    .line 61
    .local v1, "_arg0":Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback;
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->registerCallback(Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v7

    .line 67
    .end local v1    # "_arg0":Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback;
    :sswitch_3
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback;
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->unregisterCallback(Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v7

    .line 76
    .end local v1    # "_arg0":Lcom/mediatek/bluetooth/IBluetoothFtpServerCallback;
    :sswitch_4
    const-string/jumbo v8, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->enable()Z

    move-result v5

    .line 78
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return v7

    .line 84
    .end local v5    # "_result":Z
    :sswitch_5
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->disable()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v7

    .line 91
    :sswitch_6
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->getStatus()I

    move-result v3

    .line 93
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return v7

    .line 99
    .end local v3    # "_result":I
    :sswitch_7
    const-string/jumbo v8, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->setPermission(I)Z

    move-result v5

    .line 103
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v5, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v7

    .line 109
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->getPermission()I

    move-result v3

    .line 111
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return v7

    .line 117
    .end local v3    # "_result":I
    :sswitch_9
    const-string/jumbo v8, "com.mediatek.bluetooth.IBluetoothFtpServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/IBluetoothFtpServer$Stub;->setRootDir(Ljava/lang/String;)Z

    move-result v5

    .line 121
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v5, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return v7

    .line 41
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
