.class public abstract Lcom/mediatek/perfservice/IPerfService$Stub;
.super Landroid/os/Binder;
.source "IPerfService.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/IPerfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/IPerfService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.perfservice.IPerfService"

.field static final TRANSACTION_boostDisable:I = 0x2

.field static final TRANSACTION_boostEnable:I = 0x1

.field static final TRANSACTION_boostEnableTimeout:I = 0x3

.field static final TRANSACTION_boostEnableTimeoutMs:I = 0x4

.field static final TRANSACTION_dumpAll:I = 0x14

.field static final TRANSACTION_getLastBoostPid:I = 0x18

.field static final TRANSACTION_getPackName:I = 0x17

.field static final TRANSACTION_notifyAppState:I = 0x5

.field static final TRANSACTION_notifyDisplayType:I = 0x1a

.field static final TRANSACTION_notifyFrameUpdate:I = 0x19

.field static final TRANSACTION_notifyUserStatus:I = 0x1b

.field static final TRANSACTION_restorePolicy:I = 0x16

.field static final TRANSACTION_setFavorPid:I = 0x15

.field static final TRANSACTION_userDisable:I = 0x10

.field static final TRANSACTION_userDisableAll:I = 0x12

.field static final TRANSACTION_userEnable:I = 0xd

.field static final TRANSACTION_userEnableTimeout:I = 0xe

.field static final TRANSACTION_userEnableTimeoutMs:I = 0xf

.field static final TRANSACTION_userGetCapability:I = 0x9

.field static final TRANSACTION_userReg:I = 0x6

.field static final TRANSACTION_userRegBigLittle:I = 0x7

.field static final TRANSACTION_userRegScn:I = 0xa

.field static final TRANSACTION_userRegScnConfig:I = 0xb

.field static final TRANSACTION_userResetAll:I = 0x11

.field static final TRANSACTION_userRestoreAll:I = 0x13

.field static final TRANSACTION_userUnreg:I = 0x8

.field static final TRANSACTION_userUnregScn:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;
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
    const-string/jumbo v1, "com.mediatek.perfservice.IPerfService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/perfservice/IPerfService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/perfservice/IPerfService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/perfservice/IPerfService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 43
    :sswitch_0
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    return v0

    .line 48
    :sswitch_1
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->boostEnable(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v0, 0x1

    return v0

    .line 57
    .end local v1    # "_arg0":I
    :sswitch_2
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->boostDisable(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v0, 0x1

    return v0

    .line 66
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->boostEnableTimeout(II)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v0, 0x1

    return v0

    .line 77
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->boostEnableTimeoutMs(II)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 88
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 96
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 97
    .local v4, "_arg3":I
    invoke-virtual {p0, v7, v8, v3, v4}, Lcom/mediatek/perfservice/IPerfService$Stub;->notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v0, 0x1

    return v0

    .line 103
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/perfservice/IPerfService$Stub;->userReg(IIII)I

    move-result v9

    .line 113
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v0, 0x1

    return v0

    .line 119
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v9    # "_result":I
    :sswitch_7
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 131
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService$Stub;->userRegBigLittle(IIIIII)I

    move-result v9

    .line 133
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v0, 0x1

    return v0

    .line 139
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v9    # "_result":I
    :sswitch_8
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userUnreg(I)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v0, 0x1

    return v0

    .line 148
    .end local v1    # "_arg0":I
    :sswitch_9
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userGetCapability(I)I

    move-result v9

    .line 152
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v0, 0x1

    return v0

    .line 158
    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_a
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->userRegScn(II)I

    move-result v9

    .line 164
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v0, 0x1

    return v0

    .line 170
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_b
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 180
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 182
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg5":I
    move-object v0, p0

    .line 183
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService$Stub;->userRegScnConfig(IIIIII)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v0, 0x1

    return v0

    .line 189
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :sswitch_c
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userUnregScn(I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v0, 0x1

    return v0

    .line 198
    .end local v1    # "_arg0":I
    :sswitch_d
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userEnable(I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/4 v0, 0x1

    return v0

    .line 207
    .end local v1    # "_arg0":I
    :sswitch_e
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->userEnableTimeout(II)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    const/4 v0, 0x1

    return v0

    .line 218
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_f
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->userEnableTimeoutMs(II)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v0, 0x1

    return v0

    .line 229
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_10
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userDisable(I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/4 v0, 0x1

    return v0

    .line 238
    .end local v1    # "_arg0":I
    :sswitch_11
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->userResetAll()V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    const/4 v0, 0x1

    return v0

    .line 245
    :sswitch_12
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->userDisableAll()V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v0, 0x1

    return v0

    .line 252
    :sswitch_13
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->userRestoreAll()V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v0, 0x1

    return v0

    .line 259
    :sswitch_14
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->dumpAll()V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    const/4 v0, 0x1

    return v0

    .line 266
    :sswitch_15
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->setFavorPid(I)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v0, 0x1

    return v0

    .line 275
    .end local v1    # "_arg0":I
    :sswitch_16
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->restorePolicy(I)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v0, 0x1

    return v0

    .line 284
    .end local v1    # "_arg0":I
    :sswitch_17
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->getPackName()Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    return v0

    .line 292
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->getLastBoostPid()I

    move-result v9

    .line 294
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v0, 0x1

    return v0

    .line 300
    .end local v9    # "_result":I
    :sswitch_19
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->notifyFrameUpdate(I)V

    .line 304
    const/4 v0, 0x1

    return v0

    .line 308
    .end local v1    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->notifyDisplayType(I)V

    .line 312
    const/4 v0, 0x1

    return v0

    .line 316
    .end local v1    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 320
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->notifyUserStatus(II)V

    .line 322
    const/4 v0, 0x1

    return v0

    .line 39
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
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
