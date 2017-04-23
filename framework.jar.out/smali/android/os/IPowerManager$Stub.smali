.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final TRANSACTION_boostScreenBrightness:I = 0x17

.field static final TRANSACTION_crash:I = 0x15

.field static final TRANSACTION_goToSleep:I = 0xa

.field static final TRANSACTION_isDeviceIdleMode:I = 0x12

.field static final TRANSACTION_isInteractive:I = 0xf

.field static final TRANSACTION_isPowerSaveMode:I = 0x10

.field static final TRANSACTION_isScreenBrightnessBoosted:I = 0x18

.field static final TRANSACTION_isWakeLockLevelSupported:I = 0x7

.field static final TRANSACTION_nap:I = 0xe

.field static final TRANSACTION_powerHint:I = 0x5

.field static final TRANSACTION_reboot:I = 0x13

.field static final TRANSACTION_releaseWakeLock:I = 0x3

.field static final TRANSACTION_setAttentionLight:I = 0x1c

.field static final TRANSACTION_setBackLightProperties:I = 0x1d

.field static final TRANSACTION_setBacklightOffForWfd:I = 0x1b

.field static final TRANSACTION_setMMILight:I = 0x1e

.field static final TRANSACTION_setPowerSaveMode:I = 0x11

.field static final TRANSACTION_setStayOnSetting:I = 0x16

.field static final TRANSACTION_setTemporaryScreenAutoBrightnessAdjustmentSettingOverride:I = 0x1a

.field static final TRANSACTION_setTemporaryScreenBrightnessSettingOverride:I = 0x19

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_startBacklight:I = 0xb

.field static final TRANSACTION_stopBacklight:I = 0xc

.field static final TRANSACTION_updateWakeLockUids:I = 0x4

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x6

.field static final TRANSACTION_userActivity:I = 0x8

.field static final TRANSACTION_wakeUp:I = 0x9

.field static final TRANSACTION_wakeUpByReason:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
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
    const-string/jumbo v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IPowerManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 35
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

    .line 390
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 52
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 54
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/WorkSource;

    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 66
    invoke-virtual/range {v4 .. v10}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v4, 0x1

    return v4

    .line 62
    .end local v10    # "_arg5":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .local v9, "_arg4":Landroid/os/WorkSource;
    goto :goto_0

    .line 72
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/os/WorkSource;
    :sswitch_2
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 76
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 78
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 80
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 82
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg4":I
    move-object/from16 v11, p0

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    .line 83
    invoke-virtual/range {v11 .. v16}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v4, 0x1

    return v4

    .line 89
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :sswitch_3
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 93
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 94
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v4, 0x1

    return v4

    .line 100
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_4
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 104
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v32

    .line 105
    .local v32, "_arg1":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v4, 0x1

    return v4

    .line 111
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v32    # "_arg1":[I
    :sswitch_5
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 115
    .local v20, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 116
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/os/IPowerManager$Stub;->powerHint(II)V

    .line 117
    const/4 v4, 0x1

    return v4

    .line 121
    .end local v6    # "_arg1":I
    .end local v20    # "_arg0":I
    :sswitch_6
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 125
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/WorkSource;

    .line 132
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 133
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1, v7}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v4, 0x1

    return v4

    .line 129
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_1
    const/16 v30, 0x0

    .local v30, "_arg1":Landroid/os/WorkSource;
    goto :goto_1

    .line 139
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v30    # "_arg1":Landroid/os/WorkSource;
    :sswitch_7
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 142
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v34

    .line 143
    .local v34, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v34, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v4, 0x1

    return v4

    .line 144
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 149
    .end local v20    # "_arg0":I
    .end local v34    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 153
    .local v26, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 155
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 156
    .local v22, "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/os/IPowerManager$Stub;->userActivity(JII)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v4, 0x1

    return v4

    .line 162
    .end local v6    # "_arg1":I
    .end local v22    # "_arg2":I
    .end local v26    # "_arg0":J
    :sswitch_9
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 166
    .restart local v26    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 168
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 169
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2, v13, v7}, Landroid/os/IPowerManager$Stub;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v4, 0x1

    return v4

    .line 175
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg0":J
    :sswitch_a
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 179
    .restart local v26    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 181
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 182
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v4, 0x1

    return v4

    .line 188
    .end local v6    # "_arg1":I
    .end local v22    # "_arg2":I
    .end local v26    # "_arg0":J
    :sswitch_b
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 191
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->startBacklight(I)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v4, 0x1

    return v4

    .line 197
    .end local v20    # "_arg0":I
    :sswitch_c
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->stopBacklight()V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v4, 0x1

    return v4

    .line 204
    :sswitch_d
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 208
    .restart local v26    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 209
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/IPowerManager$Stub;->wakeUpByReason(JI)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v4, 0x1

    return v4

    .line 215
    .end local v6    # "_arg1":I
    .end local v26    # "_arg0":J
    :sswitch_e
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 218
    .restart local v26    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->nap(J)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v4, 0x1

    return v4

    .line 224
    .end local v26    # "_arg0":J
    :sswitch_f
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v34

    .line 226
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v34, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v4, 0x1

    return v4

    .line 227
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 232
    .end local v34    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v34

    .line 234
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v34, :cond_4

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v4, 0x1

    return v4

    .line 235
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 240
    .end local v34    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v29, 0x1

    .line 243
    .local v29, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerSaveMode(Z)Z

    move-result v34

    .line 244
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v34, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v4, 0x1

    return v4

    .line 242
    .end local v29    # "_arg0":Z
    .end local v34    # "_result":Z
    :cond_5
    const/16 v29, 0x0

    .restart local v29    # "_arg0":Z
    goto :goto_5

    .line 245
    .restart local v34    # "_result":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 250
    .end local v29    # "_arg0":Z
    .end local v34    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isDeviceIdleMode()Z

    move-result v34

    .line 252
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v34, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v4, 0x1

    return v4

    .line 253
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 258
    .end local v34    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v29, 0x1

    .line 262
    .restart local v29    # "_arg0":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 264
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v33, 0x1

    .line 265
    .local v33, "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v33

    invoke-virtual {v0, v1, v13, v2}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/4 v4, 0x1

    return v4

    .line 260
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v29    # "_arg0":Z
    .end local v33    # "_arg2":Z
    :cond_8
    const/16 v29, 0x0

    .restart local v29    # "_arg0":Z
    goto :goto_8

    .line 264
    .restart local v13    # "_arg1":Ljava/lang/String;
    :cond_9
    const/16 v33, 0x0

    .restart local v33    # "_arg2":Z
    goto :goto_9

    .line 271
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v29    # "_arg0":Z
    .end local v33    # "_arg2":Z
    :sswitch_14
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v29, 0x1

    .line 275
    .restart local v29    # "_arg0":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v31, 0x1

    .line 276
    .local v31, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->shutdown(ZZ)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    const/4 v4, 0x1

    return v4

    .line 273
    .end local v29    # "_arg0":Z
    .end local v31    # "_arg1":Z
    :cond_a
    const/16 v29, 0x0

    .restart local v29    # "_arg0":Z
    goto :goto_a

    .line 275
    :cond_b
    const/16 v31, 0x0

    .restart local v31    # "_arg1":Z
    goto :goto_b

    .line 282
    .end local v29    # "_arg0":Z
    .end local v31    # "_arg1":Z
    :sswitch_15
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 285
    .local v28, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v4, 0x1

    return v4

    .line 291
    .end local v28    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 294
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v4, 0x1

    return v4

    .line 300
    .end local v20    # "_arg0":I
    :sswitch_17
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 303
    .restart local v26    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/4 v4, 0x1

    return v4

    .line 309
    .end local v26    # "_arg0":J
    :sswitch_18
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    move-result v34

    .line 311
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v34, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v4, 0x1

    return v4

    .line 312
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 317
    .end local v34    # "_result":Z
    :sswitch_19
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 320
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/4 v4, 0x1

    return v4

    .line 326
    .end local v20    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v25

    .line 329
    .local v25, "_arg0":F
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/4 v4, 0x1

    return v4

    .line 335
    .end local v25    # "_arg0":F
    :sswitch_1b
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v29, 0x1

    .line 338
    .restart local v29    # "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setBacklightOffForWfd(Z)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    const/4 v4, 0x1

    return v4

    .line 337
    .end local v29    # "_arg0":Z
    :cond_d
    const/16 v29, 0x0

    .restart local v29    # "_arg0":Z
    goto :goto_d

    .line 344
    .end local v29    # "_arg0":Z
    :sswitch_1c
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    const/16 v29, 0x1

    .line 348
    .restart local v29    # "_arg0":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 349
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v4, 0x1

    return v4

    .line 346
    .end local v6    # "_arg1":I
    .end local v29    # "_arg0":Z
    :cond_e
    const/16 v29, 0x0

    .restart local v29    # "_arg0":Z
    goto :goto_e

    .line 355
    .end local v29    # "_arg0":Z
    :sswitch_1d
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 359
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 361
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 363
    .local v14, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 365
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 367
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .local v17, "_arg5":J
    move-object/from16 v11, p0

    move-object v12, v5

    .line 368
    invoke-virtual/range {v11 .. v18}, Landroid/os/IPowerManager$Stub;->setBackLightProperties(Landroid/os/IBinder;Ljava/lang/String;FIIJ)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v4, 0x1

    return v4

    .line 374
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":F
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":J
    :sswitch_1e
    const-string/jumbo v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 378
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 380
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 382
    .restart local v22    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 384
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg4":I
    move-object/from16 v19, p0

    move/from16 v21, v6

    move/from16 v23, v15

    move/from16 v24, v16

    .line 385
    invoke-virtual/range {v19 .. v24}, Landroid/os/IPowerManager$Stub;->setMMILight(IIIII)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v4, 0x1

    return v4

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
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
