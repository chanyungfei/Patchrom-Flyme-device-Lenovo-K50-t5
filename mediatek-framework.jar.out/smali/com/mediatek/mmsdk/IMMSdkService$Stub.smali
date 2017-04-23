.class public abstract Lcom/mediatek/mmsdk/IMMSdkService$Stub;
.super Landroid/os/Binder;
.source "IMMSdkService.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IMMSdkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IMMSdkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IMMSdkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IMMSdkService"

.field static final TRANSACTION_connectEffect:I = 0x2

.field static final TRANSACTION_connectFeatureManager:I = 0x6

.field static final TRANSACTION_connectGesture:I = 0x3

.field static final TRANSACTION_connectHeartrate:I = 0x4

.field static final TRANSACTION_connectImageTransformUser:I = 0x1

.field static final TRANSACTION_disconnectHeartrate:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.mediatek.mmsdk.IMMSdkService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IMMSdkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IMMSdkService;
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
    const-string/jumbo v1, "com.mediatek.mmsdk.IMMSdkService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IMMSdkService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/mmsdk/IMMSdkService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/mmsdk/IMMSdkService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/mmsdk/IMMSdkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "com.mediatek.mmsdk.IMMSdkService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v5

    .line 48
    :sswitch_1
    const-string/jumbo v4, "com.mediatek.mmsdk.IMMSdkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 51
    .local v0, "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IMMSdkService$Stub;->connectImageTransformUser(Landroid/hardware/camera2/utils/BinderHolder;)I

    move-result v3

    .line 52
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v0, p3, v5}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    :goto_0
    return v5

    .line 59
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v3    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "com.mediatek.mmsdk.IMMSdkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "_arg0":Ljava/lang/String;
    new-instance v2, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v2}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 70
    .local v2, "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/mmsdk/IMMSdkService$Stub;->connectEffect(Ljava/lang/String;Landroid/hardware/camera2/utils/BinderHolder;)I

    move-result v3

    .line 71
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v2, p3, v5}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    :goto_1
    return v5

    .line 78
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 84
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v3    # "_result":I
    :sswitch_3
    const-string/jumbo v4, "com.mediatek.mmsdk.IMMSdkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 87
    .restart local v0    # "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IMMSdkService$Stub;->connectGesture(Landroid/hardware/camera2/utils/BinderHolder;)I

    move-result v3

    .line 88
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v0, p3, v5}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    :goto_2
    return v5

    .line 95
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 101
    .end local v0    # "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v3    # "_result":I
    :sswitch_4
    const-string/jumbo v4, "com.mediatek.mmsdk.IMMSdkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    new-instance v0, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 104
    .restart local v0    # "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IMMSdkService$Stub;->connectHeartrate(Landroid/hardware/camera2/utils/BinderHolder;)I

    move-result v3

    .line 105
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v0, p3, v5}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    :goto_3
    return v5

    .line 112
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 118
    .end local v0    # "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v3    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "com.mediatek.mmsdk.IMMSdkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IMMSdkService$Stub;->disconnectHeartrate()I

    move-result v3

    .line 120
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return v5

    .line 126
    .end local v3    # "_result":I
    :sswitch_6
    const-string/jumbo v4, "com.mediatek.mmsdk.IMMSdkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 129
    .restart local v0    # "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IMMSdkService$Stub;->connectFeatureManager(Landroid/hardware/camera2/utils/BinderHolder;)I

    move-result v3

    .line 130
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v0, p3, v5}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_4
    return v5

    .line 137
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
