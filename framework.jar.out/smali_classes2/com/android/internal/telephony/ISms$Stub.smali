.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_activateCellBroadcastSmsForSubscriber:I = 0x2b

.field static final TRANSACTION_copyMessageToIccEfForSubscriber:I = 0x3

.field static final TRANSACTION_copyTextMessageToIccCardForSubscriber:I = 0x1a

.field static final TRANSACTION_disableCellBroadcastForSubscriber:I = 0xb

.field static final TRANSACTION_disableCellBroadcastRangeForSubscriber:I = 0xd

.field static final TRANSACTION_enableCellBroadcastForSubscriber:I = 0xa

.field static final TRANSACTION_enableCellBroadcastRangeForSubscriber:I = 0xc

.field static final TRANSACTION_getAllMessagesFromIccEfByModeForSubscriber:I = 0x19

.field static final TRANSACTION_getAllMessagesFromIccEfForSubscriber:I = 0x1

.field static final TRANSACTION_getCellBroadcastSmsConfigForSubscriber:I = 0x28

.field static final TRANSACTION_getImsSmsFormatForSubscriber:I = 0x15

.field static final TRANSACTION_getMessageFromIccEfForSubscriber:I = 0x27

.field static final TRANSACTION_getPreferredSmsSubscription:I = 0x14

.field static final TRANSACTION_getPremiumSmsPermission:I = 0xe

.field static final TRANSACTION_getPremiumSmsPermissionForSubscriber:I = 0xf

.field static final TRANSACTION_getSmsParametersForSubscriber:I = 0x25

.field static final TRANSACTION_getSmsSimMemoryStatusForSubscriber:I = 0x1e

.field static final TRANSACTION_injectSmsPduForSubscriber:I = 0x8

.field static final TRANSACTION_insertRawMessageToIccCardForSubscriber:I = 0x22

.field static final TRANSACTION_insertTextMessageToIccCardForSubscriber:I = 0x21

.field static final TRANSACTION_isImsSmsSupportedForSubscriber:I = 0x12

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x16

.field static final TRANSACTION_isSmsReadyForSubscriber:I = 0x1c

.field static final TRANSACTION_isSmsSimPickActivityNeeded:I = 0x13

.field static final TRANSACTION_queryCellBroadcastSmsActivationForSubscriber:I = 0x2a

.field static final TRANSACTION_removeCellBroadcastMsgForSubscriber:I = 0x2c

.field static final TRANSACTION_sendDataForSubscriber:I = 0x4

.field static final TRANSACTION_sendDataForSubscriberWithSelfPermissions:I = 0x5

.field static final TRANSACTION_sendDataWithOriginalPortForSubscriber:I = 0x1b

.field static final TRANSACTION_sendMultipartTextForSubscriber:I = 0x9

.field static final TRANSACTION_sendMultipartTextWithEncodingTypeForSubscriber:I = 0x20

.field static final TRANSACTION_sendMultipartTextWithExtraParamsForSubscriber:I = 0x24

.field static final TRANSACTION_sendStoredMultipartText:I = 0x18

.field static final TRANSACTION_sendStoredText:I = 0x17

.field static final TRANSACTION_sendTextForSubscriber:I = 0x6

.field static final TRANSACTION_sendTextForSubscriberWithSelfPermissions:I = 0x7

.field static final TRANSACTION_sendTextWithEncodingTypeForSubscriber:I = 0x1f

.field static final TRANSACTION_sendTextWithExtraParamsForSubscriber:I = 0x23

.field static final TRANSACTION_setCellBroadcastSmsConfigForSubscriber:I = 0x29

.field static final TRANSACTION_setEtwsConfigForSubscriber:I = 0x2d

.field static final TRANSACTION_setPremiumSmsPermission:I = 0x10

.field static final TRANSACTION_setPremiumSmsPermissionForSubscriber:I = 0x11

.field static final TRANSACTION_setSmsMemoryStatusForSubscriber:I = 0x1d

.field static final TRANSACTION_setSmsParametersForSubscriber:I = 0x26

.field static final TRANSACTION_updateMessageOnIccEfForSubscriber:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string/jumbo v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    return-object v1

    .line 40
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/android/internal/telephony/ISms;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 44
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 109
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
    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 912
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 56
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v4, 0x1

    return v4

    .line 61
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 65
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v106

    .line 67
    .local v106, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    move-object/from16 v0, p3

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 69
    const/4 v4, 0x1

    return v4

    .line 73
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v106    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 77
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 81
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 83
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .local v9, "_arg4":[B
    move-object/from16 v4, p0

    .line 84
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v107

    .line 85
    .local v107, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v107, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v4, 0x1

    return v4

    .line 86
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 91
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":[B
    .end local v107    # "_result":Z
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 95
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 97
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 99
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 101
    .local v14, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .restart local v9    # "_arg4":[B
    move-object/from16 v10, p0

    move v11, v5

    move-object v12, v6

    move v13, v7

    move-object v15, v9

    .line 102
    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result v107

    .line 103
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v107, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v4, 0x1

    return v4

    .line 104
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 109
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":[B
    .end local v14    # "_arg3":[B
    .end local v107    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 113
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 115
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 119
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 121
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 123
    .local v21, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    .line 130
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/PendingIntent;

    :goto_3
    move-object/from16 v15, p0

    move/from16 v16, v5

    move-object/from16 v17, v6

    .line 136
    invoke-virtual/range {v15 .. v23}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v4, 0x1

    return v4

    .line 127
    :cond_2
    const/16 v22, 0x0

    .local v22, "_arg6":Landroid/app/PendingIntent;
    goto :goto_2

    .line 134
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    :cond_3
    const/16 v23, 0x0

    .local v23, "_arg7":Landroid/app/PendingIntent;
    goto :goto_3

    .line 142
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":[B
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 146
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 148
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 150
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 152
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 154
    .restart local v20    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 156
    .restart local v21    # "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    .line 163
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 164
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/PendingIntent;

    :goto_5
    move-object/from16 v15, p0

    move/from16 v16, v5

    move-object/from16 v17, v6

    .line 169
    invoke-virtual/range {v15 .. v23}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v4, 0x1

    return v4

    .line 160
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_4

    .line 167
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    :cond_5
    const/16 v23, 0x0

    .restart local v23    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_5

    .line 175
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":[B
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 179
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 181
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 183
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 185
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 187
    .local v29, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/PendingIntent;

    .line 194
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 195
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    .line 201
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v32, 0x1

    .local v32, "_arg7":Z
    :goto_8
    move-object/from16 v24, p0

    move/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move-object/from16 v31, v22

    .line 202
    invoke-virtual/range {v24 .. v32}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v4, 0x1

    return v4

    .line 191
    .end local v32    # "_arg7":Z
    :cond_6
    const/16 v30, 0x0

    .local v30, "_arg5":Landroid/app/PendingIntent;
    goto :goto_6

    .line 198
    .end local v30    # "_arg5":Landroid/app/PendingIntent;
    :cond_7
    const/16 v22, 0x0

    .restart local v22    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_7

    .line 201
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    :cond_8
    const/16 v32, 0x0

    .restart local v32    # "_arg7":Z
    goto :goto_8

    .line 208
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v29    # "_arg4":Ljava/lang/String;
    .end local v32    # "_arg7":Z
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 212
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 214
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 216
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 218
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 220
    .restart local v29    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 221
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/PendingIntent;

    .line 227
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 228
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    :goto_a
    move-object/from16 v24, p0

    move/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move-object/from16 v31, v22

    .line 233
    invoke-virtual/range {v24 .. v31}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    const/4 v4, 0x1

    return v4

    .line 224
    :cond_9
    const/16 v30, 0x0

    .restart local v30    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_9

    .line 231
    .end local v30    # "_arg5":Landroid/app/PendingIntent;
    :cond_a
    const/16 v22, 0x0

    .restart local v22    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_a

    .line 239
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    .end local v29    # "_arg4":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 243
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v95

    .line 245
    .local v95, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 247
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 248
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/app/PendingIntent;

    .line 253
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v95

    move-object/from16 v2, v18

    move-object/from16 v3, v99

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v4, 0x1

    return v4

    .line 251
    :cond_b
    const/16 v99, 0x0

    .local v99, "_arg3":Landroid/app/PendingIntent;
    goto :goto_b

    .line 259
    .end local v5    # "_arg0":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v95    # "_arg1":[B
    .end local v99    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 263
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 265
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 267
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 269
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v38

    .line 271
    .local v38, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v39

    .line 273
    .local v39, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v40

    .line 275
    .local v40, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/16 v32, 0x1

    .restart local v32    # "_arg7":Z
    :goto_c
    move-object/from16 v33, p0

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v18

    move-object/from16 v37, v19

    move/from16 v41, v32

    .line 276
    invoke-virtual/range {v33 .. v41}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    const/4 v4, 0x1

    return v4

    .line 275
    .end local v32    # "_arg7":Z
    :cond_c
    const/16 v32, 0x0

    .restart local v32    # "_arg7":Z
    goto :goto_c

    .line 282
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v32    # "_arg7":Z
    .end local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v39    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v40    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 286
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v93

    .line 288
    .local v93, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 289
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1, v7}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastForSubscriber(III)Z

    move-result v107

    .line 290
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v107, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v4, 0x1

    return v4

    .line 291
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 296
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v93    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 300
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v93

    .line 302
    .restart local v93    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 303
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1, v7}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastForSubscriber(III)Z

    move-result v107

    .line 304
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v107, :cond_e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v4, 0x1

    return v4

    .line 305
    :cond_e
    const/4 v4, 0x0

    goto :goto_e

    .line 310
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v93    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 314
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v93

    .line 316
    .restart local v93    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 318
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 319
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v107

    .line 320
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v107, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v4, 0x1

    return v4

    .line 321
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .line 326
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v93    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 330
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v93

    .line 332
    .restart local v93    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 334
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 335
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v107

    .line 336
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v107, :cond_10

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v4, 0x1

    return v4

    .line 337
    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    .line 342
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v93    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v92

    .line 345
    .local v92, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v100

    .line 346
    .local v100, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v4, 0x1

    return v4

    .line 352
    .end local v92    # "_arg0":Ljava/lang/String;
    .end local v100    # "_result":I
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 356
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 357
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    move-result v100

    .line 358
    .restart local v100    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v4, 0x1

    return v4

    .line 364
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v100    # "_result":I
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v92

    .line 368
    .restart local v92    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v93

    .line 369
    .restart local v93    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    move/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v4, 0x1

    return v4

    .line 375
    .end local v92    # "_arg0":Ljava/lang/String;
    .end local v93    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 379
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 381
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 382
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v4, 0x1

    return v4

    .line 388
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 391
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupportedForSubscriber(I)Z

    move-result v107

    .line 392
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v107, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v4, 0x1

    return v4

    .line 393
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 398
    .end local v5    # "_arg0":I
    .end local v107    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 401
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->isSmsSimPickActivityNeeded(I)Z

    move-result v107

    .line 402
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v107, :cond_12

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v4, 0x1

    return v4

    .line 403
    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    .line 408
    .end local v5    # "_arg0":I
    .end local v107    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()I

    move-result v100

    .line 410
    .restart local v100    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/4 v4, 0x1

    return v4

    .line 416
    .end local v100    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 419
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v105

    .line 420
    .local v105, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    const/4 v4, 0x1

    return v4

    .line 426
    .end local v5    # "_arg0":I
    .end local v105    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isSMSPromptEnabled()Z

    move-result v107

    .line 428
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v107, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v4, 0x1

    return v4

    .line 429
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 434
    .end local v107    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 438
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 440
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 441
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/net/Uri;

    .line 447
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 449
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 450
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/app/PendingIntent;

    .line 456
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 457
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/PendingIntent;

    :goto_16
    move-object/from16 v41, p0

    move/from16 v42, v5

    move-object/from16 v43, v6

    move-object/from16 v45, v19

    move-object/from16 v47, v30

    .line 462
    invoke-virtual/range {v41 .. v47}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v4, 0x1

    return v4

    .line 444
    .end local v19    # "_arg3":Ljava/lang/String;
    :cond_14
    const/16 v44, 0x0

    .local v44, "_arg2":Landroid/net/Uri;
    goto :goto_14

    .line 453
    .end local v44    # "_arg2":Landroid/net/Uri;
    .restart local v19    # "_arg3":Ljava/lang/String;
    :cond_15
    const/16 v46, 0x0

    .local v46, "_arg4":Landroid/app/PendingIntent;
    goto :goto_15

    .line 460
    .end local v46    # "_arg4":Landroid/app/PendingIntent;
    :cond_16
    const/16 v30, 0x0

    .restart local v30    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_16

    .line 468
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v30    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 472
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 474
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 475
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/net/Uri;

    .line 481
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 483
    .restart local v19    # "_arg3":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v52

    .line 485
    .local v52, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v39

    .restart local v39    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v47, p0

    move/from16 v48, v5

    move-object/from16 v49, v6

    move-object/from16 v50, v44

    move-object/from16 v51, v19

    move-object/from16 v53, v39

    .line 486
    invoke-virtual/range {v47 .. v53}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v4, 0x1

    return v4

    .line 478
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v39    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v52    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :cond_17
    const/16 v44, 0x0

    .restart local v44    # "_arg2":Landroid/net/Uri;
    goto :goto_17

    .line 492
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_arg2":Landroid/net/Uri;
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 496
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 498
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 499
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v106

    .line 500
    .restart local v106    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    move-object/from16 v0, p3

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 502
    const/4 v4, 0x1

    return v4

    .line 506
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v106    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 510
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 512
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 514
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 516
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v38

    .line 518
    .restart local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 520
    .local v59, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v60

    .local v60, "_arg6":J
    move-object/from16 v53, p0

    move/from16 v54, v5

    move-object/from16 v55, v6

    move-object/from16 v56, v18

    move-object/from16 v57, v19

    move-object/from16 v58, v38

    .line 521
    invoke-virtual/range {v53 .. v61}, Lcom/android/internal/telephony/ISms$Stub;->copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v100

    .line 522
    .restart local v100    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v4, 0x1

    return v4

    .line 528
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v59    # "_arg5":I
    .end local v60    # "_arg6":J
    .end local v100    # "_result":I
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 532
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 534
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 536
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 538
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 540
    .restart local v20    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 542
    .restart local v59    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v69

    .line 544
    .local v69, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 545
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/PendingIntent;

    .line 551
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 552
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Landroid/app/PendingIntent;

    :goto_19
    move-object/from16 v62, p0

    move/from16 v63, v5

    move-object/from16 v64, v6

    move-object/from16 v65, v18

    move-object/from16 v66, v19

    move/from16 v67, v20

    move/from16 v68, v59

    move-object/from16 v70, v23

    .line 557
    invoke-virtual/range {v62 .. v71}, Lcom/android/internal/telephony/ISms$Stub;->sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    const/4 v4, 0x1

    return v4

    .line 548
    :cond_18
    const/16 v23, 0x0

    .restart local v23    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_18

    .line 555
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    :cond_19
    const/16 v71, 0x0

    .local v71, "_arg8":Landroid/app/PendingIntent;
    goto :goto_19

    .line 563
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v59    # "_arg5":I
    .end local v69    # "_arg6":[B
    .end local v71    # "_arg8":Landroid/app/PendingIntent;
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 566
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->isSmsReadyForSubscriber(I)Z

    move-result v107

    .line 567
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    if-eqz v107, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/4 v4, 0x1

    return v4

    .line 568
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 573
    .end local v5    # "_arg0":I
    .end local v107    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 577
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v94, 0x1

    .line 578
    .local v94, "_arg1":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ISms$Stub;->setSmsMemoryStatusForSubscriber(IZ)V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    const/4 v4, 0x1

    return v4

    .line 577
    .end local v94    # "_arg1":Z
    :cond_1b
    const/16 v94, 0x0

    .restart local v94    # "_arg1":Z
    goto :goto_1b

    .line 584
    .end local v5    # "_arg0":I
    .end local v94    # "_arg1":Z
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 588
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 589
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    move-result-object v104

    .line 590
    .local v104, "_result":Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    if-eqz v104, :cond_1c

    .line 592
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v4, 0x1

    move-object/from16 v0, v104

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 598
    :goto_1c
    const/4 v4, 0x1

    return v4

    .line 596
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 602
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v104    # "_result":Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 606
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 608
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 610
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 612
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 614
    .restart local v29    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 616
    .restart local v59    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 617
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    .line 623
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 624
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/PendingIntent;

    .line 630
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v81, 0x1

    .local v81, "_arg8":Z
    :goto_1f
    move-object/from16 v72, p0

    move/from16 v73, v5

    move-object/from16 v74, v6

    move-object/from16 v75, v18

    move-object/from16 v76, v19

    move-object/from16 v77, v29

    move/from16 v78, v59

    move-object/from16 v79, v22

    move-object/from16 v80, v23

    .line 631
    invoke-virtual/range {v72 .. v81}, Lcom/android/internal/telephony/ISms$Stub;->sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v4, 0x1

    return v4

    .line 620
    .end local v81    # "_arg8":Z
    :cond_1d
    const/16 v22, 0x0

    .restart local v22    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_1d

    .line 627
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    :cond_1e
    const/16 v23, 0x0

    .restart local v23    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_1e

    .line 630
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    :cond_1f
    const/16 v81, 0x0

    .restart local v81    # "_arg8":Z
    goto :goto_1f

    .line 637
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v29    # "_arg4":Ljava/lang/String;
    .end local v59    # "_arg5":I
    .end local v81    # "_arg8":Z
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 641
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 643
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 645
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 647
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v38

    .line 649
    .restart local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 651
    .restart local v59    # "_arg5":I
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v40

    .line 653
    .restart local v40    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v80

    .line 655
    .local v80, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    const/16 v81, 0x1

    .restart local v81    # "_arg8":Z
    :goto_20
    move-object/from16 v72, p0

    move/from16 v73, v5

    move-object/from16 v74, v6

    move-object/from16 v75, v18

    move-object/from16 v76, v19

    move-object/from16 v77, v38

    move/from16 v78, v59

    move-object/from16 v79, v40

    .line 656
    invoke-virtual/range {v72 .. v81}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    const/4 v4, 0x1

    return v4

    .line 655
    .end local v81    # "_arg8":Z
    :cond_20
    const/16 v81, 0x0

    .restart local v81    # "_arg8":Z
    goto :goto_20

    .line 662
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v59    # "_arg5":I
    .end local v80    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v81    # "_arg8":Z
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 666
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 668
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 670
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 672
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v38

    .line 674
    .restart local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 676
    .restart local v59    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v60

    .restart local v60    # "_arg6":J
    move-object/from16 v53, p0

    move/from16 v54, v5

    move-object/from16 v55, v6

    move-object/from16 v56, v18

    move-object/from16 v57, v19

    move-object/from16 v58, v38

    .line 677
    invoke-virtual/range {v53 .. v61}, Lcom/android/internal/telephony/ISms$Stub;->insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v101

    .line 678
    .local v101, "_result":Landroid/telephony/SimSmsInsertStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v101, :cond_21

    .line 680
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    const/4 v4, 0x1

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/SimSmsInsertStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 686
    :goto_21
    const/4 v4, 0x1

    return v4

    .line 684
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 690
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v59    # "_arg5":I
    .end local v60    # "_arg6":J
    .end local v101    # "_result":Landroid/telephony/SimSmsInsertStatus;
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 694
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 696
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 698
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 700
    .restart local v14    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .restart local v9    # "_arg4":[B
    move-object/from16 v10, p0

    move v11, v5

    move-object v12, v6

    move v13, v7

    move-object v15, v9

    .line 701
    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/ISms$Stub;->insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v101

    .line 702
    .restart local v101    # "_result":Landroid/telephony/SimSmsInsertStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v101, :cond_22

    .line 704
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    const/4 v4, 0x1

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/SimSmsInsertStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 710
    :goto_22
    const/4 v4, 0x1

    return v4

    .line 708
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 714
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":[B
    .end local v14    # "_arg3":[B
    .end local v101    # "_result":Landroid/telephony/SimSmsInsertStatus;
    :sswitch_23
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 718
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 720
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 722
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 724
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 726
    .restart local v29    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 727
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Landroid/os/Bundle;

    .line 733
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 734
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    .line 740
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    .line 741
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/PendingIntent;

    .line 747
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    const/16 v81, 0x1

    .restart local v81    # "_arg8":Z
    :goto_26
    move-object/from16 v82, p0

    move/from16 v83, v5

    move-object/from16 v84, v6

    move-object/from16 v85, v18

    move-object/from16 v86, v19

    move-object/from16 v87, v29

    move-object/from16 v89, v22

    move-object/from16 v90, v23

    move/from16 v91, v81

    .line 748
    invoke-virtual/range {v82 .. v91}, Lcom/android/internal/telephony/ISms$Stub;->sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    const/4 v4, 0x1

    return v4

    .line 730
    .end local v81    # "_arg8":Z
    :cond_23
    const/16 v88, 0x0

    .local v88, "_arg5":Landroid/os/Bundle;
    goto :goto_23

    .line 737
    .end local v88    # "_arg5":Landroid/os/Bundle;
    :cond_24
    const/16 v22, 0x0

    .restart local v22    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_24

    .line 744
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    :cond_25
    const/16 v23, 0x0

    .restart local v23    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_25

    .line 747
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    :cond_26
    const/16 v81, 0x0

    .restart local v81    # "_arg8":Z
    goto :goto_26

    .line 754
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v29    # "_arg4":Ljava/lang/String;
    .end local v81    # "_arg8":Z
    :sswitch_24
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 758
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 760
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 762
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 764
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v38

    .line 766
    .restart local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 767
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Landroid/os/Bundle;

    .line 773
    :goto_27
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v40

    .line 775
    .restart local v40    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v80

    .line 777
    .restart local v80    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    const/16 v81, 0x1

    .restart local v81    # "_arg8":Z
    :goto_28
    move-object/from16 v72, p0

    move/from16 v73, v5

    move-object/from16 v74, v6

    move-object/from16 v75, v18

    move-object/from16 v76, v19

    move-object/from16 v77, v38

    move-object/from16 v78, v88

    move-object/from16 v79, v40

    .line 778
    invoke-virtual/range {v72 .. v81}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    const/4 v4, 0x1

    return v4

    .line 770
    .end local v40    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v80    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v81    # "_arg8":Z
    :cond_27
    const/16 v88, 0x0

    .restart local v88    # "_arg5":Landroid/os/Bundle;
    goto :goto_27

    .line 777
    .end local v88    # "_arg5":Landroid/os/Bundle;
    .restart local v40    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .restart local v80    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :cond_28
    const/16 v81, 0x0

    .restart local v81    # "_arg8":Z
    goto :goto_28

    .line 784
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v80    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v81    # "_arg8":Z
    :sswitch_25
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 788
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 789
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->getSmsParametersForSubscriber(ILjava/lang/String;)Landroid/telephony/SmsParameters;

    move-result-object v102

    .line 790
    .local v102, "_result":Landroid/telephony/SmsParameters;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    if-eqz v102, :cond_29

    .line 792
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    const/4 v4, 0x1

    move-object/from16 v0, v102

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/SmsParameters;->writeToParcel(Landroid/os/Parcel;I)V

    .line 798
    :goto_29
    const/4 v4, 0x1

    return v4

    .line 796
    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 802
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v102    # "_result":Landroid/telephony/SmsParameters;
    :sswitch_26
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 806
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 808
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 809
    sget-object v4, Landroid/telephony/SmsParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/telephony/SmsParameters;

    .line 814
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/internal/telephony/ISms$Stub;->setSmsParametersForSubscriber(ILjava/lang/String;Landroid/telephony/SmsParameters;)Z

    move-result v107

    .line 815
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    if-eqz v107, :cond_2b

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    const/4 v4, 0x1

    return v4

    .line 812
    .end local v107    # "_result":Z
    :cond_2a
    const/16 v97, 0x0

    .local v97, "_arg2":Landroid/telephony/SmsParameters;
    goto :goto_2a

    .line 816
    .end local v97    # "_arg2":Landroid/telephony/SmsParameters;
    .restart local v107    # "_result":Z
    :cond_2b
    const/4 v4, 0x0

    goto :goto_2b

    .line 821
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v107    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 825
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 827
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 828
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v103

    .line 829
    .local v103, "_result":Lcom/android/internal/telephony/SmsRawData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    if-eqz v103, :cond_2c

    .line 831
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    const/4 v4, 0x1

    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SmsRawData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 837
    :goto_2c
    const/4 v4, 0x1

    return v4

    .line 835
    :cond_2c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 841
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v103    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :sswitch_28
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 844
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->getCellBroadcastSmsConfigForSubscriber(I)[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    move-result-object v108

    .line 845
    .local v108, "_result":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v108

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 847
    const/4 v4, 0x1

    return v4

    .line 851
    .end local v5    # "_arg0":I
    .end local v108    # "_result":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    :sswitch_29
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 855
    .restart local v5    # "_arg0":I
    sget-object v4, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v96

    check-cast v96, [Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 857
    .local v96, "_arg1":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    sget-object v4, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v98

    check-cast v98, [Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 858
    .local v98, "_arg2":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v98

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setCellBroadcastSmsConfigForSubscriber(I[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;)Z

    move-result v107

    .line 859
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    if-eqz v107, :cond_2d

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v4, 0x1

    return v4

    .line 860
    :cond_2d
    const/4 v4, 0x0

    goto :goto_2d

    .line 865
    .end local v5    # "_arg0":I
    .end local v96    # "_arg1":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v98    # "_arg2":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v107    # "_result":Z
    :sswitch_2a
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 868
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->queryCellBroadcastSmsActivationForSubscriber(I)Z

    move-result v107

    .line 869
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v107, :cond_2e

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/4 v4, 0x1

    return v4

    .line 870
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2e

    .line 875
    .end local v5    # "_arg0":I
    .end local v107    # "_result":Z
    :sswitch_2b
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 879
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    const/16 v94, 0x1

    .line 880
    .restart local v94    # "_arg1":Z
    :goto_2f
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ISms$Stub;->activateCellBroadcastSmsForSubscriber(IZ)Z

    move-result v107

    .line 881
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    if-eqz v107, :cond_30

    const/4 v4, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v4, 0x1

    return v4

    .line 879
    .end local v94    # "_arg1":Z
    .end local v107    # "_result":Z
    :cond_2f
    const/16 v94, 0x0

    .restart local v94    # "_arg1":Z
    goto :goto_2f

    .line 882
    .restart local v107    # "_result":Z
    :cond_30
    const/4 v4, 0x0

    goto :goto_30

    .line 887
    .end local v5    # "_arg0":I
    .end local v94    # "_arg1":Z
    .end local v107    # "_result":Z
    :sswitch_2c
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 891
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v93

    .line 893
    .restart local v93    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 894
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1, v7}, Lcom/android/internal/telephony/ISms$Stub;->removeCellBroadcastMsgForSubscriber(III)Z

    move-result v107

    .line 895
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    if-eqz v107, :cond_31

    const/4 v4, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/4 v4, 0x1

    return v4

    .line 896
    :cond_31
    const/4 v4, 0x0

    goto :goto_31

    .line 901
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v93    # "_arg1":I
    .end local v107    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 905
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v93

    .line 906
    .restart local v93    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ISms$Stub;->setEtwsConfigForSubscriber(II)Z

    move-result v107

    .line 907
    .restart local v107    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    if-eqz v107, :cond_32

    const/4 v4, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    const/4 v4, 0x1

    return v4

    .line 908
    :cond_32
    const/4 v4, 0x0

    goto :goto_32

    .line 52
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
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
