.class public abstract Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IProximityProfileServiceCallback.java"

# interfaces
.implements Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetoothle.pxp.IProximityProfileServiceCallback"

.field static final TRANSACTION_onAlertStatusChange:I = 0x2

.field static final TRANSACTION_onDistanceValueChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.mediatek.bluetoothle.pxp.IProximityProfileServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
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
    const-string/jumbo v1, "com.mediatek.bluetoothle.pxp.IProximityProfileServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 42
    :sswitch_0
    const-string/jumbo v3, "com.mediatek.bluetoothle.pxp.IProximityProfileServiceCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v4

    .line 47
    :sswitch_1
    const-string/jumbo v3, "com.mediatek.bluetoothle.pxp.IProximityProfileServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub;->onDistanceValueChange(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v4

    .line 58
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string/jumbo v3, "com.mediatek.bluetoothle.pxp.IProximityProfileServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 63
    .local v2, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub;->onAlertStatusChange(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v4

    .line 62
    .end local v2    # "_arg1":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Z
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
