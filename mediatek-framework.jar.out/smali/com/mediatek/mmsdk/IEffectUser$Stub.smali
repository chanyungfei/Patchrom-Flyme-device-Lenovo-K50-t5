.class public abstract Lcom/mediatek/mmsdk/IEffectUser$Stub;
.super Landroid/os/Binder;
.source "IEffectUser.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IEffectUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IEffectUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IEffectUser"

.field static final TRANSACTION_apply:I = 0x2

.field static final TRANSACTION_getName:I = 0x1

.field static final TRANSACTION_release:I = 0x5

.field static final TRANSACTION_setParameter:I = 0x3

.field static final TRANSACTION_setUpdateListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.mediatek.mmsdk.IEffectUser"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IEffectUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectUser;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.mediatek.mmsdk.IEffectUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IEffectUser;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/mmsdk/IEffectUser;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/mmsdk/IEffectUser$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/mmsdk/IEffectUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 43
    :sswitch_0
    const-string/jumbo v9, "com.mediatek.mmsdk.IEffectUser"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v9, 0x1

    return v9

    .line 48
    :sswitch_1
    const-string/jumbo v9, "com.mediatek.mmsdk.IEffectUser"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectUser$Stub;->getName()Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    const/4 v9, 0x1

    return v9

    .line 56
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v9, "com.mediatek.mmsdk.IEffectUser"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 59
    sget-object v9, Lcom/mediatek/mmsdk/ImageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/ImageInfo;

    .line 65
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/mmsdk/IMemory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IMemory;

    move-result-object v4

    .line 67
    .local v4, "_arg1":Lcom/mediatek/mmsdk/IMemory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 68
    sget-object v9, Lcom/mediatek/mmsdk/ImageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/mmsdk/ImageInfo;

    .line 74
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/mmsdk/IMemory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IMemory;

    move-result-object v6

    .line 75
    .local v6, "_arg3":Lcom/mediatek/mmsdk/IMemory;
    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/mediatek/mmsdk/IEffectUser$Stub;->apply(Lcom/mediatek/mmsdk/ImageInfo;Lcom/mediatek/mmsdk/IMemory;Lcom/mediatek/mmsdk/ImageInfo;Lcom/mediatek/mmsdk/IMemory;)Z

    move-result v8

    .line 76
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v8, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v9, 0x1

    return v9

    .line 62
    .end local v4    # "_arg1":Lcom/mediatek/mmsdk/IMemory;
    .end local v6    # "_arg3":Lcom/mediatek/mmsdk/IMemory;
    .end local v8    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Lcom/mediatek/mmsdk/ImageInfo;
    goto :goto_0

    .line 71
    .end local v1    # "_arg0":Lcom/mediatek/mmsdk/ImageInfo;
    .restart local v4    # "_arg1":Lcom/mediatek/mmsdk/IMemory;
    :cond_1
    const/4 v5, 0x0

    .local v5, "_arg2":Lcom/mediatek/mmsdk/ImageInfo;
    goto :goto_1

    .line 77
    .end local v5    # "_arg2":Lcom/mediatek/mmsdk/ImageInfo;
    .restart local v6    # "_arg3":Lcom/mediatek/mmsdk/IMemory;
    .restart local v8    # "_result":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 82
    .end local v4    # "_arg1":Lcom/mediatek/mmsdk/IMemory;
    .end local v6    # "_arg3":Lcom/mediatek/mmsdk/IMemory;
    .end local v8    # "_result":Z
    :sswitch_3
    const-string/jumbo v9, "com.mediatek.mmsdk.IEffectUser"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/mmsdk/IEffectUser$Stub;->setParameter(Ljava/lang/String;I)Z

    move-result v8

    .line 88
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v8, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v9, 0x1

    return v9

    .line 89
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 94
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "com.mediatek.mmsdk.IEffectUser"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/mmsdk/IEffectUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectUpdateListener;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Lcom/mediatek/mmsdk/IEffectUpdateListener;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IEffectUser$Stub;->setUpdateListener(Lcom/mediatek/mmsdk/IEffectUpdateListener;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v9, 0x1

    return v9

    .line 103
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectUpdateListener;
    :sswitch_5
    const-string/jumbo v9, "com.mediatek.mmsdk.IEffectUser"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectUser$Stub;->release()Z

    move-result v8

    .line 105
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v8, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v9, 0x1

    return v9

    .line 106
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 39
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
