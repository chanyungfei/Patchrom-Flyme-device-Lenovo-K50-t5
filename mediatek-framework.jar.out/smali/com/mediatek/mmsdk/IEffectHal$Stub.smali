.class public abstract Lcom/mediatek/mmsdk/IEffectHal$Stub;
.super Landroid/os/Binder;
.source "IEffectHal.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IEffectHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IEffectHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectHal$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IEffectHal"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_addInputFrame:I = 0xd

.field static final TRANSACTION_addOutputFrame:I = 0xe

.field static final TRANSACTION_configure:I = 0x3

.field static final TRANSACTION_getCaptureRequirement:I = 0xa

.field static final TRANSACTION_getNameVersion:I = 0x7

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_prepare:I = 0xb

.field static final TRANSACTION_release:I = 0xc

.field static final TRANSACTION_setEffectListener:I = 0x8

.field static final TRANSACTION_setParameter:I = 0x9

.field static final TRANSACTION_start:I = 0x5

.field static final TRANSACTION_unconfigure:I = 0x4

.field static final TRANSACTION_uninit:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHal;
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
    const-string/jumbo v1, "com.mediatek.mmsdk.IEffectHal"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IEffectHal;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/mmsdk/IEffectHal;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/mmsdk/IEffectHal$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 43
    :sswitch_0
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v10, 0x1

    return v10

    .line 48
    :sswitch_1
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->init()I

    move-result v7

    .line 50
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v10, 0x1

    return v10

    .line 56
    .end local v7    # "_result":I
    :sswitch_2
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->uninit()I

    move-result v7

    .line 58
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/4 v10, 0x1

    return v10

    .line 64
    .end local v7    # "_result":I
    :sswitch_3
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->configure()I

    move-result v7

    .line 66
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    const/4 v10, 0x1

    return v10

    .line 72
    .end local v7    # "_result":I
    :sswitch_4
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->unconfigure()I

    move-result v7

    .line 74
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v10, 0x1

    return v10

    .line 80
    .end local v7    # "_result":I
    :sswitch_5
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->start()J

    move-result-wide v8

    .line 82
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    const/4 v10, 0x1

    return v10

    .line 88
    .end local v8    # "_result":J
    :sswitch_6
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 91
    sget-object v10, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/BaseParameters;

    .line 96
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->abort(Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v7

    .line 97
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v10, 0x1

    return v10

    .line 94
    .end local v7    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_0

    .line 103
    .end local v1    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_7
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    new-instance v2, Lcom/mediatek/mmsdk/EffectHalVersion;

    invoke-direct {v2}, Lcom/mediatek/mmsdk/EffectHalVersion;-><init>()V

    .line 106
    .local v2, "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    invoke-virtual {p0, v2}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->getNameVersion(Lcom/mediatek/mmsdk/EffectHalVersion;)I

    move-result v7

    .line 107
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    if-eqz v2, :cond_1

    .line 110
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v10, 0x1

    invoke-virtual {v2, p3, v10}, Lcom/mediatek/mmsdk/EffectHalVersion;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 114
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 120
    .end local v2    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v7    # "_result":I
    :sswitch_8
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectListener;

    move-result-object v3

    .line 123
    .local v3, "_arg0":Lcom/mediatek/mmsdk/IEffectListener;
    invoke-virtual {p0, v3}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->setEffectListener(Lcom/mediatek/mmsdk/IEffectListener;)I

    move-result v7

    .line 124
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v10, 0x1

    return v10

    .line 130
    .end local v3    # "_arg0":Lcom/mediatek/mmsdk/IEffectListener;
    .end local v7    # "_result":I
    :sswitch_9
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 136
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v10, 0x1

    return v10

    .line 142
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":I
    :sswitch_a
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    new-instance v1, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    .line 145
    .local v1, "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    invoke-virtual {p0, v1}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->getCaptureRequirement(Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v7

    .line 146
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    if-eqz v1, :cond_2

    .line 149
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v10, 0x1

    invoke-virtual {v1, p3, v10}, Lcom/mediatek/mmsdk/BaseParameters;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_2
    const/4 v10, 0x1

    return v10

    .line 153
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 159
    .end local v1    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v7    # "_result":I
    :sswitch_b
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->prepare()I

    move-result v7

    .line 161
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v10, 0x1

    return v10

    .line 167
    .end local v7    # "_result":I
    :sswitch_c
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->release()I

    move-result v7

    .line 169
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v10, 0x1

    return v10

    .line 175
    .end local v7    # "_result":I
    :sswitch_d
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 178
    sget-object v10, Landroid/view/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GraphicBuffer;

    .line 184
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    .line 185
    sget-object v10, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/mmsdk/BaseParameters;

    .line 190
    :goto_4
    invoke-virtual {p0, v0, v5}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->addInputFrame(Landroid/view/GraphicBuffer;Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v7

    .line 191
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v10, 0x1

    return v10

    .line 181
    .end local v7    # "_result":I
    :cond_3
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/view/GraphicBuffer;
    goto :goto_3

    .line 188
    .end local v0    # "_arg0":Landroid/view/GraphicBuffer;
    :cond_4
    const/4 v5, 0x0

    .local v5, "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_4

    .line 197
    .end local v5    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_e
    const-string/jumbo v10, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    .line 200
    sget-object v10, Landroid/view/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GraphicBuffer;

    .line 206
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    .line 207
    sget-object v10, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/mmsdk/BaseParameters;

    .line 212
    :goto_6
    invoke-virtual {p0, v0, v5}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->addOutputFrame(Landroid/view/GraphicBuffer;Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v7

    .line 213
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v10, 0x1

    return v10

    .line 203
    .end local v7    # "_result":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/GraphicBuffer;
    goto :goto_5

    .line 210
    .end local v0    # "_arg0":Landroid/view/GraphicBuffer;
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_6

    .line 39
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
