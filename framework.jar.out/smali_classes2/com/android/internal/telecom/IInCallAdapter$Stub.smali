.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_conference:I = 0xc

.field static final TRANSACTION_disconnectCall:I = 0x3

.field static final TRANSACTION_explicitCallTransfer:I = 0x16

.field static final TRANSACTION_hangupActiveAndAnswerWaiting:I = 0x19

.field static final TRANSACTION_hangupAll:I = 0x17

.field static final TRANSACTION_hangupAllHoldCalls:I = 0x18

.field static final TRANSACTION_holdCall:I = 0x4

.field static final TRANSACTION_inviteConferenceParticipants:I = 0x1b

.field static final TRANSACTION_mergeConference:I = 0xe

.field static final TRANSACTION_mute:I = 0x6

.field static final TRANSACTION_onUiShowing:I = 0x1c

.field static final TRANSACTION_phoneAccountSelected:I = 0xb

.field static final TRANSACTION_playDtmfTone:I = 0x8

.field static final TRANSACTION_postDialContinue:I = 0xa

.field static final TRANSACTION_rejectCall:I = 0x2

.field static final TRANSACTION_setAudioRoute:I = 0x7

.field static final TRANSACTION_setSortedBackgroudCallList:I = 0x14

.field static final TRANSACTION_setSortedIncomingCallList:I = 0x15

.field static final TRANSACTION_splitFromConference:I = 0xd

.field static final TRANSACTION_startVoiceRecording:I = 0x12

.field static final TRANSACTION_stopDtmfTone:I = 0x9

.field static final TRANSACTION_stopVoiceRecording:I = 0x13

.field static final TRANSACTION_swapConference:I = 0xf

.field static final TRANSACTION_turnOffProximitySensor:I = 0x11

.field static final TRANSACTION_turnOnProximitySensor:I = 0x10

.field static final TRANSACTION_unholdCall:I = 0x5

.field static final TRANSACTION_updatePowerForSmartBook:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telecom/IInCallAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 288
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    .line 49
    :sswitch_0
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v13, 0x1

    return v13

    .line 54
    :sswitch_1
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 59
    .local v6, "_arg1":I
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    .line 60
    const/4 v13, 0x1

    return v13

    .line 64
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_2
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    const/4 v10, 0x1

    .line 70
    .local v10, "_arg1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 72
    const/4 v13, 0x1

    return v13

    .line 68
    .end local v10    # "_arg1":Z
    .end local v11    # "_arg2":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Z
    goto :goto_0

    .line 76
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    .line 80
    const/4 v13, 0x1

    return v13

    .line 84
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    .line 88
    const/4 v13, 0x1

    return v13

    .line 92
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    .line 96
    const/4 v13, 0x1

    return v13

    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    const/4 v4, 0x1

    .line 103
    .local v4, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    .line 104
    const/4 v13, 0x1

    return v13

    .line 102
    .end local v4    # "_arg0":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_1

    .line 108
    .end local v4    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(I)V

    .line 112
    const/4 v13, 0x1

    return v13

    .line 116
    .end local v1    # "_arg0":I
    :sswitch_8
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    int-to-char v5, v13

    .line 121
    .local v5, "_arg1":C
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    .line 122
    const/4 v13, 0x1

    return v13

    .line 126
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":C
    :sswitch_9
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    .line 130
    const/4 v13, 0x1

    return v13

    .line 134
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x1

    .line 139
    .restart local v10    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v2, v10}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    .line 140
    const/4 v13, 0x1

    return v13

    .line 138
    .end local v10    # "_arg1":Z
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Z
    goto :goto_2

    .line 144
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Z
    :sswitch_b
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    .line 149
    sget-object v13, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    .line 155
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 156
    .local v12, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v2, v7, v12}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 157
    const/4 v13, 0x1

    return v13

    .line 152
    .end local v12    # "_arg2":Z
    :cond_3
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_3

    .line 155
    .end local v7    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "_arg2":Z
    goto :goto_4

    .line 161
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg2":Z
    :sswitch_c
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v8}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v13, 0x1

    return v13

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    .line 175
    const/4 v13, 0x1

    return v13

    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    .line 183
    const/4 v13, 0x1

    return v13

    .line 187
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    .line 191
    const/4 v13, 0x1

    return v13

    .line 195
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    .line 197
    const/4 v13, 0x1

    return v13

    .line 201
    :sswitch_11
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v4, 0x1

    .line 204
    .restart local v4    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    .line 205
    const/4 v13, 0x1

    return v13

    .line 203
    .end local v4    # "_arg0":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_5

    .line 209
    .end local v4    # "_arg0":Z
    :sswitch_12
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->startVoiceRecording()V

    .line 211
    const/4 v13, 0x1

    return v13

    .line 215
    :sswitch_13
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopVoiceRecording()V

    .line 217
    const/4 v13, 0x1

    return v13

    .line 221
    :sswitch_14
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 224
    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setSortedBackgroudCallList(Ljava/util/List;)V

    .line 225
    const/4 v13, 0x1

    return v13

    .line 229
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_15
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 232
    .restart local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setSortedIncomingCallList(Ljava/util/List;)V

    .line 233
    const/4 v13, 0x1

    return v13

    .line 237
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_16
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->explicitCallTransfer(Ljava/lang/String;)V

    .line 241
    const/4 v13, 0x1

    return v13

    .line 245
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->hangupAll()V

    .line 247
    const/4 v13, 0x1

    return v13

    .line 251
    :sswitch_18
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->hangupAllHoldCalls()V

    .line 253
    const/4 v13, 0x1

    return v13

    .line 257
    :sswitch_19
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->hangupActiveAndAnswerWaiting()V

    .line 259
    const/4 v13, 0x1

    return v13

    .line 263
    :sswitch_1a
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_6

    const/4 v4, 0x1

    .line 266
    .restart local v4    # "_arg0":Z
    :goto_6
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->updatePowerForSmartBook(Z)V

    .line 267
    const/4 v13, 0x1

    return v13

    .line 265
    .end local v4    # "_arg0":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_6

    .line 271
    .end local v4    # "_arg0":Z
    :sswitch_1b
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 276
    .local v9, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2, v9}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 277
    const/4 v13, 0x1

    return v13

    .line 281
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1c
    const-string/jumbo v13, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_7

    const/4 v4, 0x1

    .line 284
    .restart local v4    # "_arg0":Z
    :goto_7
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->onUiShowing(Z)V

    .line 285
    const/4 v13, 0x1

    return v13

    .line 283
    .end local v4    # "_arg0":Z
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_7

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
