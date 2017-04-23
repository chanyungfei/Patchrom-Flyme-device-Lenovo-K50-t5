.class public abstract Lcom/mediatek/mmsdk/IEffectHalClient$Stub;
.super Landroid/os/Binder;
.source "IEffectHalClient.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IEffectHalClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IEffectHalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectHalClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IEffectHalClient"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_addInputParameter:I = 0x10

.field static final TRANSACTION_addOutputParameter:I = 0x11

.field static final TRANSACTION_configure:I = 0x3

.field static final TRANSACTION_dequeueAndQueueBuf:I = 0x17

.field static final TRANSACTION_getCaptureRequirement:I = 0xb

.field static final TRANSACTION_getInputSurfaces:I = 0xe

.field static final TRANSACTION_getInputsyncMode:I = 0x13

.field static final TRANSACTION_getNameVersion:I = 0x7

.field static final TRANSACTION_getOutputsyncMode:I = 0x15

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_prepare:I = 0xc

.field static final TRANSACTION_release:I = 0xd

.field static final TRANSACTION_setBaseParameter:I = 0x16

.field static final TRANSACTION_setEffectListener:I = 0x8

.field static final TRANSACTION_setInputsyncMode:I = 0x12

.field static final TRANSACTION_setOutputSurfaces:I = 0xf

.field static final TRANSACTION_setOutputsyncMode:I = 0x14

.field static final TRANSACTION_setParameter:I = 0x9

.field static final TRANSACTION_setParameters:I = 0xa

.field static final TRANSACTION_start:I = 0x5

.field static final TRANSACTION_unconfigure:I = 0x4

.field static final TRANSACTION_uninit:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHalClient;
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
    const-string/jumbo v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IEffectHalClient;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/mmsdk/IEffectHalClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/mmsdk/IEffectHalClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 24
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 326
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 45
    :sswitch_0
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v5, 0x1

    return v5

    .line 50
    :sswitch_1
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->init()I

    move-result v20

    .line 52
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v5, 0x1

    return v5

    .line 58
    .end local v20    # "_result":I
    :sswitch_2
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->uninit()I

    move-result v20

    .line 60
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v5, 0x1

    return v5

    .line 66
    .end local v20    # "_result":I
    :sswitch_3
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->configure()I

    move-result v20

    .line 68
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v5, 0x1

    return v5

    .line 74
    .end local v20    # "_result":I
    :sswitch_4
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->unconfigure()I

    move-result v20

    .line 76
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v5, 0x1

    return v5

    .line 82
    .end local v20    # "_result":I
    :sswitch_5
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->start()J

    move-result-wide v22

    .line 84
    .local v22, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    const/4 v5, 0x1

    return v5

    .line 90
    .end local v22    # "_result":J
    :sswitch_6
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mmsdk/BaseParameters;

    .line 98
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->abort(Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v20

    .line 99
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v5, 0x1

    return v5

    .line 96
    .end local v20    # "_result":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_0

    .line 105
    .end local v4    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_7
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    new-instance v11, Lcom/mediatek/mmsdk/EffectHalVersion;

    invoke-direct {v11}, Lcom/mediatek/mmsdk/EffectHalVersion;-><init>()V

    .line 108
    .local v11, "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getNameVersion(Lcom/mediatek/mmsdk/EffectHalVersion;)I

    move-result v20

    .line 109
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    if-eqz v11, :cond_1

    .line 112
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v5}, Lcom/mediatek/mmsdk/EffectHalVersion;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 116
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 122
    .end local v11    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v20    # "_result":I
    :sswitch_8
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectListener;

    move-result-object v14

    .line 125
    .local v14, "_arg0":Lcom/mediatek/mmsdk/IEffectListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setEffectListener(Lcom/mediatek/mmsdk/IEffectListener;)I

    move-result v20

    .line 126
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v5, 0x1

    return v5

    .line 132
    .end local v14    # "_arg0":Lcom/mediatek/mmsdk/IEffectListener;
    .end local v20    # "_result":I
    :sswitch_9
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 136
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 137
    .local v17, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 138
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v5, 0x1

    return v5

    .line 144
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":I
    :sswitch_a
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mmsdk/BaseParameters;

    .line 152
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setParameters(Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v20

    .line 153
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v5, 0x1

    return v5

    .line 150
    .end local v20    # "_result":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_2

    .line 159
    .end local v4    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_b
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mmsdk/BaseParameters;

    .line 168
    :goto_3
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v18, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getCaptureRequirement(Lcom/mediatek/mmsdk/BaseParameters;Ljava/util/List;)I

    move-result v20

    .line 170
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 173
    const/4 v5, 0x1

    return v5

    .line 165
    .end local v18    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    .end local v20    # "_result":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_3

    .line 177
    .end local v4    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_c
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->prepare()I

    move-result v20

    .line 179
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v5, 0x1

    return v5

    .line 185
    .end local v20    # "_result":I
    :sswitch_d
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->release()I

    move-result v20

    .line 187
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v5, 0x1

    return v5

    .line 193
    .end local v20    # "_result":I
    :sswitch_e
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v16, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getInputSurfaces(Ljava/util/List;)I

    move-result v20

    .line 197
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 200
    const/4 v5, 0x1

    return v5

    .line 204
    .end local v16    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v20    # "_result":I
    :sswitch_f
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    sget-object v5, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 208
    .restart local v16    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 209
    .restart local v18    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setOutputSurfaces(Ljava/util/List;Ljava/util/List;)I

    move-result v20

    .line 210
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v5, 0x1

    return v5

    .line 216
    .end local v16    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v18    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    .end local v20    # "_result":I
    :sswitch_10
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 220
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 221
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/mmsdk/BaseParameters;

    .line 227
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 229
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v10, 0x1

    .local v10, "_arg3":Z
    :goto_5
    move-object/from16 v5, p0

    .line 230
    invoke-virtual/range {v5 .. v10}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->addInputParameter(ILcom/mediatek/mmsdk/BaseParameters;JZ)I

    move-result v20

    .line 231
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v5, 0x1

    return v5

    .line 224
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Z
    .end local v20    # "_result":I
    :cond_4
    const/4 v7, 0x0

    .local v7, "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_4

    .line 229
    .end local v7    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    .restart local v8    # "_arg2":J
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Z
    goto :goto_5

    .line 237
    .end local v6    # "_arg0":I
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Z
    :sswitch_11
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 241
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 242
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/mmsdk/BaseParameters;

    .line 248
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 250
    .restart local v8    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v10, 0x1

    .restart local v10    # "_arg3":Z
    :goto_7
    move-object/from16 v5, p0

    .line 251
    invoke-virtual/range {v5 .. v10}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->addOutputParameter(ILcom/mediatek/mmsdk/BaseParameters;JZ)I

    move-result v20

    .line 252
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v5, 0x1

    return v5

    .line 245
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Z
    .end local v20    # "_result":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_6

    .line 250
    .end local v7    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    .restart local v8    # "_arg2":J
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Z
    goto :goto_7

    .line 258
    .end local v6    # "_arg0":I
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Z
    :sswitch_12
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 262
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v19, 0x1

    .line 263
    .local v19, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setInputsyncMode(IZ)I

    move-result v20

    .line 264
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v5, 0x1

    return v5

    .line 262
    .end local v19    # "_arg1":Z
    .end local v20    # "_result":I
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "_arg1":Z
    goto :goto_8

    .line 270
    .end local v6    # "_arg0":I
    .end local v19    # "_arg1":Z
    :sswitch_13
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 273
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getInputsyncMode(I)Z

    move-result v21

    .line 274
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v21, :cond_9

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v5, 0x1

    return v5

    .line 275
    :cond_9
    const/4 v5, 0x0

    goto :goto_9

    .line 280
    .end local v6    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_14
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 284
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/16 v19, 0x1

    .line 285
    .restart local v19    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setOutputsyncMode(IZ)I

    move-result v20

    .line 286
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v5, 0x1

    return v5

    .line 284
    .end local v19    # "_arg1":Z
    .end local v20    # "_result":I
    :cond_a
    const/16 v19, 0x0

    .restart local v19    # "_arg1":Z
    goto :goto_a

    .line 292
    .end local v6    # "_arg0":I
    .end local v19    # "_arg1":Z
    :sswitch_15
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 295
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getOutputsyncMode(I)Z

    move-result v21

    .line 296
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v21, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v5, 0x1

    return v5

    .line 297
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 302
    .end local v6    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_16
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 305
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mmsdk/BaseParameters;

    .line 310
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setBaseParameter(Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v20

    .line 311
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v5, 0x1

    return v5

    .line 308
    .end local v20    # "_result":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_c

    .line 317
    .end local v4    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_17
    const-string/jumbo v5, "com.mediatek.mmsdk.IEffectHalClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 320
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->dequeueAndQueueBuf(J)I

    move-result v20

    .line 321
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v5, 0x1

    return v5

    .line 41
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
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
