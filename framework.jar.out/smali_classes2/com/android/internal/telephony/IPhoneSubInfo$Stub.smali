.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final TRANSACTION_getCompleteVoiceMailNumber:I = 0x15

.field static final TRANSACTION_getCompleteVoiceMailNumberForSubscriber:I = 0x16

.field static final TRANSACTION_getDeviceId:I = 0x1

.field static final TRANSACTION_getDeviceIdForPhone:I = 0x3

.field static final TRANSACTION_getDeviceSvn:I = 0x5

.field static final TRANSACTION_getDeviceSvnUsingSubId:I = 0x6

.field static final TRANSACTION_getGroupIdLevel1:I = 0x9

.field static final TRANSACTION_getGroupIdLevel1ForSubscriber:I = 0xa

.field static final TRANSACTION_getIccSerialNumber:I = 0xb

.field static final TRANSACTION_getIccSerialNumberForSubscriber:I = 0xc

.field static final TRANSACTION_getIccSimChallengeResponse:I = 0x1f

.field static final TRANSACTION_getImeiForSubscriber:I = 0x4

.field static final TRANSACTION_getIsimChallengeResponse:I = 0x1e

.field static final TRANSACTION_getIsimDomain:I = 0x1a

.field static final TRANSACTION_getIsimDomainForSubscriber:I = 0x21

.field static final TRANSACTION_getIsimGbabp:I = 0x25

.field static final TRANSACTION_getIsimGbabpForSubscriber:I = 0x26

.field static final TRANSACTION_getIsimImpi:I = 0x19

.field static final TRANSACTION_getIsimImpiForSubscriber:I = 0x20

.field static final TRANSACTION_getIsimImpu:I = 0x1b

.field static final TRANSACTION_getIsimImpuForSubscriber:I = 0x22

.field static final TRANSACTION_getIsimIst:I = 0x1c

.field static final TRANSACTION_getIsimIstForSubscriber:I = 0x23

.field static final TRANSACTION_getIsimPcscf:I = 0x1d

.field static final TRANSACTION_getIsimPcscfForSubscriber:I = 0x24

.field static final TRANSACTION_getIsimPsismsc:I = 0x2f

.field static final TRANSACTION_getIsimPsismscForSubscriber:I = 0x30

.field static final TRANSACTION_getLine1AlphaTag:I = 0xf

.field static final TRANSACTION_getLine1AlphaTagForSubscriber:I = 0x10

.field static final TRANSACTION_getLine1Number:I = 0xd

.field static final TRANSACTION_getLine1NumberForSubscriber:I = 0xe

.field static final TRANSACTION_getMncLength:I = 0x35

.field static final TRANSACTION_getMncLengthForSubscriber:I = 0x36

.field static final TRANSACTION_getMsisdn:I = 0x11

.field static final TRANSACTION_getMsisdnForSubscriber:I = 0x12

.field static final TRANSACTION_getNaiForSubscriber:I = 0x2

.field static final TRANSACTION_getSubscriberId:I = 0x7

.field static final TRANSACTION_getSubscriberIdForSubscriber:I = 0x8

.field static final TRANSACTION_getUsimGbabp:I = 0x2b

.field static final TRANSACTION_getUsimGbabpForSubscriber:I = 0x2c

.field static final TRANSACTION_getUsimPsismsc:I = 0x31

.field static final TRANSACTION_getUsimPsismscForSubscriber:I = 0x32

.field static final TRANSACTION_getUsimService:I = 0x29

.field static final TRANSACTION_getUsimServiceForSubscriber:I = 0x2a

.field static final TRANSACTION_getUsimSmsp:I = 0x33

.field static final TRANSACTION_getUsimSmspForSubscriber:I = 0x34

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x17

.field static final TRANSACTION_getVoiceMailAlphaTagForSubscriber:I = 0x18

.field static final TRANSACTION_getVoiceMailNumber:I = 0x13

.field static final TRANSACTION_getVoiceMailNumberForSubscriber:I = 0x14

.field static final TRANSACTION_setIsimGbabp:I = 0x27

.field static final TRANSACTION_setIsimGbabpForSubscriber:I = 0x28

.field static final TRANSACTION_setUsimGbabp:I = 0x2d

.field static final TRANSACTION_setUsimGbabpForSubscriber:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 623
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    .line 47
    :sswitch_0
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v13, 0x1

    return v13

    .line 52
    :sswitch_1
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    const/4 v13, 0x1

    return v13

    .line 62
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v13, 0x1

    return v13

    .line 74
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdForPhone(I)Ljava/lang/String;

    move-result-object v9

    .line 78
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    const/4 v13, 0x1

    return v13

    .line 84
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 90
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    const/4 v13, 0x1

    return v13

    .line 96
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    const/4 v13, 0x1

    return v13

    .line 106
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 111
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 112
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    const/4 v13, 0x1

    return v13

    .line 118
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 122
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    const/4 v13, 0x1

    return v13

    .line 128
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 134
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    const/4 v13, 0x1

    return v13

    .line 140
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    const/4 v13, 0x1

    return v13

    .line 150
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 156
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    const/4 v13, 0x1

    return v13

    .line 162
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 166
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    const/4 v13, 0x1

    return v13

    .line 172
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 177
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 178
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    const/4 v13, 0x1

    return v13

    .line 184
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 188
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    const/4 v13, 0x1

    return v13

    .line 194
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 199
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    const/4 v13, 0x1

    return v13

    .line 206
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 210
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    const/4 v13, 0x1

    return v13

    .line 216
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 221
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 222
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    const/4 v13, 0x1

    return v13

    .line 228
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 232
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    const/4 v13, 0x1

    return v13

    .line 238
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 243
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 244
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    const/4 v13, 0x1

    return v13

    .line 250
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 254
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    const/4 v13, 0x1

    return v13

    .line 260
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 264
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    const/4 v13, 0x1

    return v13

    .line 272
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v9

    .line 274
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    const/4 v13, 0x1

    return v13

    .line 280
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 284
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    const/4 v13, 0x1

    return v13

    .line 290
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 294
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    const/4 v13, 0x1

    return v13

    .line 300
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 305
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 306
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    const/4 v13, 0x1

    return v13

    .line 312
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi()Ljava/lang/String;

    move-result-object v9

    .line 314
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    const/4 v13, 0x1

    return v13

    .line 320
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain()Ljava/lang/String;

    move-result-object v9

    .line 322
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    const/4 v13, 0x1

    return v13

    .line 328
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu()[Ljava/lang/String;

    move-result-object v12

    .line 330
    .local v12, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 332
    const/4 v13, 0x1

    return v13

    .line 336
    .end local v12    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIst()Ljava/lang/String;

    move-result-object v9

    .line 338
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    const/4 v13, 0x1

    return v13

    .line 344
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v12

    .line 346
    .restart local v12    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 348
    const/4 v13, 0x1

    return v13

    .line 352
    .end local v12    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 356
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    const/4 v13, 0x1

    return v13

    .line 362
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v7}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 370
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    const/4 v13, 0x1

    return v13

    .line 376
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 380
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    const/4 v13, 0x1

    return v13

    .line 386
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 389
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 390
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    const/4 v13, 0x1

    return v13

    .line 396
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    move-result-object v12

    .line 400
    .restart local v12    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 402
    const/4 v13, 0x1

    return v13

    .line 406
    .end local v1    # "_arg0":I
    .end local v12    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 409
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIstForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 410
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    const/4 v13, 0x1

    return v13

    .line 416
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;

    move-result-object v12

    .line 420
    .restart local v12    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 422
    const/4 v13, 0x1

    return v13

    .line 426
    .end local v1    # "_arg0":I
    .end local v12    # "_result":[Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimGbabp()Ljava/lang/String;

    move-result-object v9

    .line 428
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    const/4 v13, 0x1

    return v13

    .line 434
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 437
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 438
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    const/4 v13, 0x1

    return v13

    .line 444
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    .line 449
    sget-object v13, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 454
    :goto_0
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    const/4 v13, 0x1

    return v13

    .line 452
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/os/Message;
    goto :goto_0

    .line 460
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/Message;
    :sswitch_28
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 466
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    .line 467
    sget-object v13, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 472
    :goto_1
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    const/4 v13, 0x1

    return v13

    .line 470
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg2":Landroid/os/Message;
    goto :goto_1

    .line 478
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/os/Message;
    :sswitch_29
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 481
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimService(I)Z

    move-result v10

    .line 482
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    if-eqz v10, :cond_2

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    const/4 v13, 0x1

    return v13

    .line 483
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 488
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Z
    :sswitch_2a
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 492
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 493
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimServiceForSubscriber(II)Z

    move-result v10

    .line 494
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    if-eqz v10, :cond_3

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    const/4 v13, 0x1

    return v13

    .line 495
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 500
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_2b
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimGbabp()Ljava/lang/String;

    move-result-object v9

    .line 502
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    const/4 v13, 0x1

    return v13

    .line 508
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 511
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 512
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    const/4 v13, 0x1

    return v13

    .line 518
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 522
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    .line 523
    sget-object v13, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 528
    :goto_4
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    const/4 v13, 0x1

    return v13

    .line 526
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Message;
    goto :goto_4

    .line 534
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/Message;
    :sswitch_2e
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 538
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 540
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_5

    .line 541
    sget-object v13, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 546
    :goto_5
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    const/4 v13, 0x1

    return v13

    .line 544
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/os/Message;
    goto :goto_5

    .line 552
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/os/Message;
    :sswitch_2f
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPsismsc()[B

    move-result-object v11

    .line 554
    .local v11, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 556
    const/4 v13, 0x1

    return v13

    .line 560
    .end local v11    # "_result":[B
    :sswitch_30
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 563
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPsismscForSubscriber(I)[B

    move-result-object v11

    .line 564
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 566
    const/4 v13, 0x1

    return v13

    .line 570
    .end local v1    # "_arg0":I
    .end local v11    # "_result":[B
    :sswitch_31
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimPsismsc()[B

    move-result-object v11

    .line 572
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 574
    const/4 v13, 0x1

    return v13

    .line 578
    .end local v11    # "_result":[B
    :sswitch_32
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 581
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimPsismscForSubscriber(I)[B

    move-result-object v11

    .line 582
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 584
    const/4 v13, 0x1

    return v13

    .line 588
    .end local v1    # "_arg0":I
    .end local v11    # "_result":[B
    :sswitch_33
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimSmsp()[B

    move-result-object v11

    .line 590
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 592
    const/4 v13, 0x1

    return v13

    .line 596
    .end local v11    # "_result":[B
    :sswitch_34
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 599
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimSmspForSubscriber(I)[B

    move-result-object v11

    .line 600
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 602
    const/4 v13, 0x1

    return v13

    .line 606
    .end local v1    # "_arg0":I
    .end local v11    # "_result":[B
    :sswitch_35
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMncLength()I

    move-result v8

    .line 608
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v13, 0x1

    return v13

    .line 614
    .end local v8    # "_result":I
    :sswitch_36
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 617
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMncLengthForSubscriber(I)I

    move-result v8

    .line 618
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v13, 0x1

    return v13

    .line 43
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
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
