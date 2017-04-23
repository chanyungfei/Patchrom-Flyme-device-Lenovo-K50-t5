.class public abstract Lcom/mediatek/mmsdk/IEffectListener$Stub;
.super Landroid/os/Binder;
.source "IEffectListener.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IEffectListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IEffectListener"

.field static final TRANSACTION_onAborted:I = 0x5

.field static final TRANSACTION_onCompleted:I = 0x4

.field static final TRANSACTION_onFailed:I = 0x6

.field static final TRANSACTION_onInputFrameProcessed:I = 0x2

.field static final TRANSACTION_onOutputFrameProcessed:I = 0x3

.field static final TRANSACTION_onPrepared:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.mediatek.mmsdk.IEffectListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectListener;
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
    const-string/jumbo v1, "com.mediatek.mmsdk.IEffectListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IEffectListener;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/mmsdk/IEffectListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/mmsdk/IEffectListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/mmsdk/IEffectListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 43
    :sswitch_0
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v6

    .line 48
    :sswitch_1
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/BaseParameters;

    .line 58
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->onPrepared(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 59
    return v6

    .line 56
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    .end local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_2
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v0

    .line 67
    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/BaseParameters;

    .line 74
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mmsdk/BaseParameters;

    .line 80
    :goto_2
    invoke-virtual {p0, v0, v1, v4}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->onInputFrameProcessed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 81
    return v6

    .line 71
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_1

    .line 78
    .end local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg2":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_2

    .line 85
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    .end local v4    # "_arg2":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_3
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/BaseParameters;

    .line 96
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mmsdk/BaseParameters;

    .line 102
    :goto_4
    invoke-virtual {p0, v0, v1, v4}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->onOutputFrameProcessed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 103
    return v6

    .line 93
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_3

    .line 100
    .end local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_4

    .line 107
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    .end local v4    # "_arg2":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_4
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v0

    .line 111
    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/BaseParameters;

    .line 118
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 119
    .local v2, "_arg2":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->onCompleted(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;J)V

    .line 120
    return v6

    .line 115
    .end local v2    # "_arg2":J
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_5

    .line 124
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    .end local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_5
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v0

    .line 128
    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 129
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/BaseParameters;

    .line 134
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->onAborted(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 135
    return v6

    .line 132
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_6

    .line 139
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    .end local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_6
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectHalClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 144
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/BaseParameters;

    .line 149
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->onFailed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 150
    return v6

    .line 147
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_7

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
