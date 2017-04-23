.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final TRANSACTION_addOnSubscriptionsChangedListener:I = 0x1

.field static final TRANSACTION_listen:I = 0x3

.field static final TRANSACTION_listenForSubscriber:I = 0x4

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0xc

.field static final TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xd

.field static final TRANSACTION_notifyCallState:I = 0x5

.field static final TRANSACTION_notifyCallStateForPhoneInfo:I = 0x6

.field static final TRANSACTION_notifyCallStateForSubscriber:I = 0x7

.field static final TRANSACTION_notifyCarrierNetworkChange:I = 0x23

.field static final TRANSACTION_notifyCellInfo:I = 0x17

.field static final TRANSACTION_notifyCellInfoForSubscriber:I = 0x1b

.field static final TRANSACTION_notifyCellLocation:I = 0x14

.field static final TRANSACTION_notifyCellLocationForSubscriber:I = 0x15

.field static final TRANSACTION_notifyDataActivity:I = 0xe

.field static final TRANSACTION_notifyDataActivityForSubscriber:I = 0xf

.field static final TRANSACTION_notifyDataConnection:I = 0x10

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x12

.field static final TRANSACTION_notifyDataConnectionFailedForSubscriber:I = 0x13

.field static final TRANSACTION_notifyDataConnectionForSubscriber:I = 0x11

.field static final TRANSACTION_notifyDataConnectionRealTimeInfo:I = 0x1c

.field static final TRANSACTION_notifyDisconnectCause:I = 0x19

.field static final TRANSACTION_notifyLteAccessStratumChanged:I = 0x1f

.field static final TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0xb

.field static final TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x1e

.field static final TRANSACTION_notifyOtaspChanged:I = 0x16

.field static final TRANSACTION_notifyPreciseCallState:I = 0x18

.field static final TRANSACTION_notifyPreciseDataConnectionFailed:I = 0x1a

.field static final TRANSACTION_notifyPsNetworkTypeChanged:I = 0x20

.field static final TRANSACTION_notifyServiceStateForPhoneId:I = 0x8

.field static final TRANSACTION_notifySharedDefaultApnStateChanged:I = 0x21

.field static final TRANSACTION_notifySignalStrength:I = 0x9

.field static final TRANSACTION_notifySignalStrengthForSubscriber:I = 0xa

.field static final TRANSACTION_notifySubscriptionInfoChanged:I = 0x22

.field static final TRANSACTION_notifyVoLteServiceStateChanged:I = 0x1d

.field static final TRANSACTION_removeOnSubscriptionsChangedListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
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
    const-string/jumbo v1, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 52
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 518
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 42
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v4, 0x1

    return v4

    .line 47
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 51
    .local v41, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v46

    .line 52
    .local v46, "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v4, 0x1

    return v4

    .line 58
    .end local v41    # "_arg0":Ljava/lang/String;
    .end local v46    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 62
    .restart local v41    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v46

    .line 63
    .restart local v46    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v4, 0x1

    return v4

    .line 69
    .end local v41    # "_arg0":Ljava/lang/String;
    .end local v46    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 73
    .restart local v41    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v47

    .line 75
    .local v47, "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 77
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v51, 0x1

    .line 78
    .local v51, "_arg3":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v47

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v4, 0x1

    return v4

    .line 77
    .end local v51    # "_arg3":Z
    :cond_0
    const/16 v51, 0x0

    .restart local v51    # "_arg3":Z
    goto :goto_0

    .line 84
    .end local v13    # "_arg2":I
    .end local v41    # "_arg0":Ljava/lang/String;
    .end local v47    # "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v51    # "_arg3":Z
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 88
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v7

    .line 92
    .local v7, "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 94
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v9, 0x1

    .local v9, "_arg4":Z
    :goto_1
    move-object/from16 v4, p0

    .line 95
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v4, 0x1

    return v4

    .line 94
    .end local v9    # "_arg4":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Z
    goto :goto_1

    .line 101
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Z
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 105
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 106
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(ILjava/lang/String;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v4, 0x1

    return v4

    .line 112
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 116
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 118
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 120
    .restart local v13    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 122
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, "_arg4":Ljava/lang/String;
    move-object/from16 v10, p0

    move v11, v5

    move v14, v8

    .line 123
    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForPhoneInfo(IIIILjava/lang/String;)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v4, 0x1

    return v4

    .line 129
    .end local v5    # "_arg0":I
    .end local v8    # "_arg3":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v15    # "_arg4":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 133
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 135
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 136
    .local v19, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v12, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForSubscriber(IILjava/lang/String;)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v4, 0x1

    return v4

    .line 142
    .end local v5    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 146
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 148
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    sget-object v4, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/telephony/ServiceState;

    .line 154
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v5, v12, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v4, 0x1

    return v4

    .line 152
    :cond_2
    const/16 v50, 0x0

    .local v50, "_arg2":Landroid/telephony/ServiceState;
    goto :goto_2

    .line 160
    .end local v5    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v50    # "_arg2":Landroid/telephony/ServiceState;
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    sget-object v4, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/telephony/SignalStrength;

    .line 168
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrength(Landroid/telephony/SignalStrength;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v4, 0x1

    return v4

    .line 166
    :cond_3
    const/16 v39, 0x0

    .local v39, "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_3

    .line 174
    .end local v39    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 179
    sget-object v4, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/telephony/SignalStrength;

    .line 184
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v4, 0x1

    return v4

    .line 182
    :cond_4
    const/16 v45, 0x0

    .local v45, "_arg1":Landroid/telephony/SignalStrength;
    goto :goto_4

    .line 190
    .end local v5    # "_arg0":I
    .end local v45    # "_arg1":Landroid/telephony/SignalStrength;
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 194
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 196
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v29, 0x1

    .line 197
    .local v29, "_arg2":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v5, v12, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v4, 0x1

    return v4

    .line 196
    .end local v29    # "_arg2":Z
    :cond_5
    const/16 v29, 0x0

    .restart local v29    # "_arg2":Z
    goto :goto_5

    .line 203
    .end local v5    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v29    # "_arg2":Z
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v43, 0x1

    .line 206
    .local v43, "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v4, 0x1

    return v4

    .line 205
    .end local v43    # "_arg0":Z
    :cond_6
    const/16 v43, 0x0

    .restart local v43    # "_arg0":Z
    goto :goto_6

    .line 212
    .end local v43    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 216
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v18, 0x1

    .line 217
    .local v18, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v4, 0x1

    return v4

    .line 216
    .end local v18    # "_arg1":Z
    :cond_7
    const/16 v18, 0x0

    .restart local v18    # "_arg1":Z
    goto :goto_7

    .line 223
    .end local v5    # "_arg0":I
    .end local v18    # "_arg1":Z
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 226
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/4 v4, 0x1

    return v4

    .line 232
    .end local v5    # "_arg0":I
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 236
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 237
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/4 v4, 0x1

    return v4

    .line 243
    .end local v5    # "_arg0":I
    .end local v12    # "_arg1":I
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 247
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v18, 0x1

    .line 249
    .restart local v18    # "_arg1":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 251
    .restart local v19    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 253
    .local v20, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 255
    .restart local v15    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 256
    sget-object v4, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/LinkProperties;

    .line 262
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 263
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/NetworkCapabilities;

    .line 269
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 271
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v25, 0x1

    .local v25, "_arg8":Z
    :goto_b
    move-object/from16 v16, p0

    move/from16 v17, v5

    move-object/from16 v21, v15

    .line 272
    invoke-virtual/range {v16 .. v25}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/4 v4, 0x1

    return v4

    .line 247
    .end local v15    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg1":Z
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Z
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "_arg1":Z
    goto :goto_8

    .line 259
    .restart local v15    # "_arg4":Ljava/lang/String;
    .restart local v19    # "_arg2":Ljava/lang/String;
    .restart local v20    # "_arg3":Ljava/lang/String;
    :cond_9
    const/16 v22, 0x0

    .local v22, "_arg5":Landroid/net/LinkProperties;
    goto :goto_9

    .line 266
    .end local v22    # "_arg5":Landroid/net/LinkProperties;
    :cond_a
    const/16 v23, 0x0

    .local v23, "_arg6":Landroid/net/NetworkCapabilities;
    goto :goto_a

    .line 271
    .end local v23    # "_arg6":Landroid/net/NetworkCapabilities;
    .restart local v24    # "_arg7":I
    :cond_b
    const/16 v25, 0x0

    .restart local v25    # "_arg8":Z
    goto :goto_b

    .line 278
    .end local v5    # "_arg0":I
    .end local v15    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg1":Z
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Z
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 282
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 284
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/16 v29, 0x1

    .line 286
    .restart local v29    # "_arg2":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 288
    .restart local v20    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 290
    .restart local v15    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 292
    .local v32, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 293
    sget-object v4, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/LinkProperties;

    .line 299
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 300
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/NetworkCapabilities;

    .line 306
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 308
    .local v35, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v36, 0x1

    .local v36, "_arg9":Z
    :goto_f
    move-object/from16 v26, p0

    move/from16 v27, v5

    move/from16 v28, v12

    move-object/from16 v30, v20

    move-object/from16 v31, v15

    .line 309
    invoke-virtual/range {v26 .. v36}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v4, 0x1

    return v4

    .line 284
    .end local v15    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v29    # "_arg2":Z
    .end local v32    # "_arg5":Ljava/lang/String;
    .end local v35    # "_arg8":I
    .end local v36    # "_arg9":Z
    :cond_c
    const/16 v29, 0x0

    .restart local v29    # "_arg2":Z
    goto :goto_c

    .line 296
    .restart local v15    # "_arg4":Ljava/lang/String;
    .restart local v20    # "_arg3":Ljava/lang/String;
    .restart local v32    # "_arg5":Ljava/lang/String;
    :cond_d
    const/16 v33, 0x0

    .local v33, "_arg6":Landroid/net/LinkProperties;
    goto :goto_d

    .line 303
    .end local v33    # "_arg6":Landroid/net/LinkProperties;
    :cond_e
    const/16 v34, 0x0

    .local v34, "_arg7":Landroid/net/NetworkCapabilities;
    goto :goto_e

    .line 308
    .end local v34    # "_arg7":Landroid/net/NetworkCapabilities;
    .restart local v35    # "_arg8":I
    :cond_f
    const/16 v36, 0x0

    .restart local v36    # "_arg9":Z
    goto :goto_f

    .line 315
    .end local v5    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v15    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v29    # "_arg2":Z
    .end local v32    # "_arg5":Ljava/lang/String;
    .end local v35    # "_arg8":I
    .end local v36    # "_arg9":Z
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 319
    .restart local v41    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 320
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/4 v4, 0x1

    return v4

    .line 326
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v41    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 330
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 332
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 333
    .restart local v19    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v4, 0x1

    return v4

    .line 339
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 342
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/Bundle;

    .line 347
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    const/4 v4, 0x1

    return v4

    .line 345
    :cond_10
    const/16 v37, 0x0

    .local v37, "_arg0":Landroid/os/Bundle;
    goto :goto_10

    .line 353
    .end local v37    # "_arg0":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 357
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 358
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/Bundle;

    .line 363
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v4, 0x1

    return v4

    .line 361
    :cond_11
    const/16 v44, 0x0

    .local v44, "_arg1":Landroid/os/Bundle;
    goto :goto_11

    .line 369
    .end local v5    # "_arg0":I
    .end local v44    # "_arg1":Landroid/os/Bundle;
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 372
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v4, 0x1

    return v4

    .line 378
    .end local v5    # "_arg0":I
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    sget-object v4, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v42

    .line 381
    .local v42, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    const/4 v4, 0x1

    return v4

    .line 387
    .end local v42    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 391
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 393
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 394
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(III)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v4, 0x1

    return v4

    .line 400
    .end local v5    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 404
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 405
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(II)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v4, 0x1

    return v4

    .line 411
    .end local v5    # "_arg0":I
    .end local v12    # "_arg1":I
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 415
    .restart local v41    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 417
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 419
    .restart local v19    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 420
    .restart local v20    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    const/4 v4, 0x1

    return v4

    .line 426
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v41    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 430
    .restart local v5    # "_arg0":I
    sget-object v4, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v48

    .line 431
    .local v48, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v4, 0x1

    return v4

    .line 437
    .end local v5    # "_arg0":I
    .end local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 440
    sget-object v4, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 445
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    const/4 v4, 0x1

    return v4

    .line 443
    :cond_12
    const/16 v38, 0x0

    .local v38, "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    goto :goto_12

    .line 451
    .end local v38    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 454
    sget-object v4, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/telephony/VoLteServiceState;

    .line 459
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v4, 0x1

    return v4

    .line 457
    :cond_13
    const/16 v40, 0x0

    .local v40, "_arg0":Landroid/telephony/VoLteServiceState;
    goto :goto_13

    .line 465
    .end local v40    # "_arg0":Landroid/telephony/VoLteServiceState;
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 469
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v49

    .line 470
    .local v49, "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(I[B)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v4, 0x1

    return v4

    .line 476
    .end local v5    # "_arg0":I
    .end local v49    # "_arg1":[B
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 479
    .restart local v41    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyLteAccessStratumChanged(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v4, 0x1

    return v4

    .line 485
    .end local v41    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 488
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPsNetworkTypeChanged(I)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    const/4 v4, 0x1

    return v4

    .line 494
    .end local v5    # "_arg0":I
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/16 v43, 0x1

    .line 497
    .restart local v43    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySharedDefaultApnStateChanged(Z)V

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    const/4 v4, 0x1

    return v4

    .line 496
    .end local v43    # "_arg0":Z
    :cond_14
    const/16 v43, 0x0

    .restart local v43    # "_arg0":Z
    goto :goto_14

    .line 503
    .end local v43    # "_arg0":Z
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    const/4 v4, 0x1

    return v4

    .line 510
    :sswitch_23
    const-string/jumbo v4, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/16 v43, 0x1

    .line 513
    .restart local v43    # "_arg0":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v4, 0x1

    return v4

    .line 512
    .end local v43    # "_arg0":Z
    :cond_15
    const/16 v43, 0x0

    .restart local v43    # "_arg0":Z
    goto :goto_15

    .line 38
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
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
