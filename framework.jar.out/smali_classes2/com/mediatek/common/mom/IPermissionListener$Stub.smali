.class public abstract Lcom/mediatek/common/mom/IPermissionListener$Stub;
.super Landroid/os/Binder;
.source "IPermissionListener.java"

# interfaces
.implements Lcom/mediatek/common/mom/IPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/mom/IPermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/IPermissionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.mom.IPermissionListener"

.field static final TRANSACTION_onPermissionChange:I = 0x2

.field static final TRANSACTION_onPermissionCheck:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "com.mediatek.common.mom.IPermissionListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/mom/IPermissionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IPermissionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "com.mediatek.common.mom.IPermissionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/mom/IPermissionListener;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/mediatek/common/mom/IPermissionListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/common/mom/IPermissionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/mom/IPermissionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 48
    :sswitch_0
    const-string/jumbo v5, "com.mediatek.common.mom.IPermissionListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v6

    .line 53
    :sswitch_1
    const-string/jumbo v7, "com.mediatek.common.mom.IPermissionListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    sget-object v7, Lcom/mediatek/common/mom/PermissionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 62
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 67
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 72
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/common/mom/IPermissionListener$Stub;->onPermissionCheck(Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Z

    move-result v4

    .line 73
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return v6

    .line 59
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "_arg0":Lcom/mediatek/common/mom/PermissionRecord;
    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Lcom/mediatek/common/mom/PermissionRecord;
    .restart local v1    # "_arg1":I
    .restart local v2    # "_arg2":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "_arg3":Landroid/os/Bundle;
    goto :goto_1

    .line 79
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v5, "com.mediatek.common.mom.IPermissionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 82
    sget-object v5, Lcom/mediatek/common/mom/PermissionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 87
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IPermissionListener$Stub;->onPermissionChange(Lcom/mediatek/common/mom/PermissionRecord;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v6

    .line 85
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/mediatek/common/mom/PermissionRecord;
    goto :goto_2

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
