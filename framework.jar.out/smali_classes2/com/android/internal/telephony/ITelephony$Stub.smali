.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x5

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x72

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x62

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x63

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x27

.field static final TRANSACTION_disableLocationUpdates:I = 0x24

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x25

.field static final TRANSACTION_enableDataConnectivity:I = 0x26

.field static final TRANSACTION_enableLocationUpdates:I = 0x22

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x23

.field static final TRANSACTION_enableVideoCalling:I = 0x70

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x7c

.field static final TRANSACTION_getActivePhoneType:I = 0x32

.field static final TRANSACTION_getActivePhoneTypeForSubscriber:I = 0x33

.field static final TRANSACTION_getAllCellInfo:I = 0x47

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x54

.field static final TRANSACTION_getCallState:I = 0x2c

.field static final TRANSACTION_getCallStateForSubscriber:I = 0x2d

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x64

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x61

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x34

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x35

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x36

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x37

.field static final TRANSACTION_getCdmaEriText:I = 0x38

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x39

.field static final TRANSACTION_getCdmaMdn:I = 0x5f

.field static final TRANSACTION_getCdmaMin:I = 0x60

.field static final TRANSACTION_getCellLocation:I = 0x29

.field static final TRANSACTION_getCellLocationById:I = 0x2a

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x58

.field static final TRANSACTION_getDataActivity:I = 0x2e

.field static final TRANSACTION_getDataActivityForSubscriber:I = 0x2f

.field static final TRANSACTION_getDataEnabled:I = 0x5c

.field static final TRANSACTION_getDataNetworkType:I = 0x40

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x41

.field static final TRANSACTION_getDataState:I = 0x30

.field static final TRANSACTION_getDataStateForSubscriber:I = 0x31

.field static final TRANSACTION_getDefaultSim:I = 0x49

.field static final TRANSACTION_getDeviceId:I = 0x7a

.field static final TRANSACTION_getIccAtr:I = 0x7f

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x67

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x66

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x7d

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x45

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x46

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x68

.field static final TRANSACTION_getModemActivityInfo:I = 0x7e

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2b

.field static final TRANSACTION_getNetworkType:I = 0x3e

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x3f

.field static final TRANSACTION_getPcscfAddress:I = 0x5d

.field static final TRANSACTION_getPreferredNetworkType:I = 0x55

.field static final TRANSACTION_getRadioAccessFamily:I = 0x6f

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x7b

.field static final TRANSACTION_getTetherApnRequired:I = 0x56

.field static final TRANSACTION_getVoiceMessageCount:I = 0x3c

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x3d

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x42

.field static final TRANSACTION_handlePinMmi:I = 0x19

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1a

.field static final TRANSACTION_hasIccCard:I = 0x43

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x44

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4b

.field static final TRANSACTION_iccCloseLogicalChannelUsingSlot:I = 0x84

.field static final TRANSACTION_iccExchangeSimIO:I = 0x4e

.field static final TRANSACTION_iccExchangeSimIOExUsingSlot:I = 0x82

.field static final TRANSACTION_iccExchangeSimIOUsingSlot:I = 0x81

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x4a

.field static final TRANSACTION_iccOpenLogicalChannelUsingSlot:I = 0x83

.field static final TRANSACTION_iccOpenLogicalChannelWithSW:I = 0x80

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x4d

.field static final TRANSACTION_iccTransmitApduBasicChannelUsingSlot:I = 0x86

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4c

.field static final TRANSACTION_iccTransmitApduLogicalChannelUsingSlot:I = 0x85

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x6b

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x28

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x75

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isIdleForSubscriber:I = 0xd

.field static final TRANSACTION_isImsRegistered:I = 0x76

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x9

.field static final TRANSACTION_isRadioOn:I = 0xe

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isRingingForSubscriber:I = 0xa

.field static final TRANSACTION_isSimPinEnabled:I = 0x10

.field static final TRANSACTION_isTtyModeSupported:I = 0x74

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x71

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x79

.field static final TRANSACTION_isVolteAvailable:I = 0x78

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x77

.field static final TRANSACTION_isWorldPhone:I = 0x73

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x6c

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x3a

.field static final TRANSACTION_nvReadItem:I = 0x50

.field static final TRANSACTION_nvResetConfig:I = 0x53

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x52

.field static final TRANSACTION_nvWriteItem:I = 0x51

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x4f

.field static final TRANSACTION_setCellInfoListRate:I = 0x48

.field static final TRANSACTION_setDataEnabled:I = 0x5b

.field static final TRANSACTION_setImsRegistrationState:I = 0x5e

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x65

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x57

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x59

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x69

.field static final TRANSACTION_setPolicyDataEnableForSubscriber:I = 0x87

.field static final TRANSACTION_setPreferredNetworkType:I = 0x5a

.field static final TRANSACTION_setRadio:I = 0x1d

.field static final TRANSACTION_setRadioCapability:I = 0x6e

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1e

.field static final TRANSACTION_setRadioPower:I = 0x1f

.field static final TRANSACTION_setRoamingOverride:I = 0x6a

.field static final TRANSACTION_setVoiceMailNumber:I = 0x3b

.field static final TRANSACTION_shutdownMobileRadios:I = 0x6d

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0x11

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x12

.field static final TRANSACTION_supplyPinReportResult:I = 0x15

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x16

.field static final TRANSACTION_supplyPuk:I = 0x13

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x14

.field static final TRANSACTION_supplyPukReportResult:I = 0x17

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x18

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1b

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1c

.field static final TRANSACTION_updateServiceLocation:I = 0x20

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
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
    const-string/jumbo v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 58
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

    .line 1545
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 49
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v5, 0x1

    return v5

    .line 54
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 57
    .local v31, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v5, 0x1

    return v5

    .line 63
    .end local v31    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 67
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 68
    .local v37, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v5, 0x1

    return v5

    .line 74
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v54

    .line 76
    .local v54, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v54, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v5, 0x1

    return v5

    .line 77
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 82
    .end local v54    # "_result":Z
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 85
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

    move-result v54

    .line 86
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v54, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v5, 0x1

    return v5

    .line 87
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 92
    .end local v6    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v5, 0x1

    return v5

    .line 99
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 102
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v5, 0x1

    return v5

    .line 108
    .end local v6    # "_arg0":I
    :sswitch_7
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v5, 0x1

    return v5

    .line 115
    :sswitch_8
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 118
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook(Ljava/lang/String;)Z

    move-result v54

    .line 119
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v54, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v5, 0x1

    return v5

    .line 120
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 125
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_9
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 129
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 130
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 131
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v54, :cond_3

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v5, 0x1

    return v5

    .line 132
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 137
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 141
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 142
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 143
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v54, :cond_4

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v5, 0x1

    return v5

    .line 144
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 149
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 152
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v54

    .line 153
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v54, :cond_5

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v5, 0x1

    return v5

    .line 154
    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    .line 159
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 162
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle(Ljava/lang/String;)Z

    move-result v54

    .line 163
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v54, :cond_6

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v5, 0x1

    return v5

    .line 164
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 169
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 173
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 174
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 175
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v54, :cond_7

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v5, 0x1

    return v5

    .line 176
    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    .line 181
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 184
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v54

    .line 185
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v54, :cond_8

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v5, 0x1

    return v5

    .line 186
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 191
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 195
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 196
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 197
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v54, :cond_9

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v5, 0x1

    return v5

    .line 198
    :cond_9
    const/4 v5, 0x0

    goto :goto_9

    .line 203
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 206
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled(Ljava/lang/String;)Z

    move-result v54

    .line 207
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v54, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v5, 0x1

    return v5

    .line 208
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 213
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 216
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v54

    .line 217
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v54, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v5, 0x1

    return v5

    .line 218
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 223
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 227
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 228
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 229
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v54, :cond_c

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v5, 0x1

    return v5

    .line 230
    :cond_c
    const/4 v5, 0x0

    goto :goto_c

    .line 235
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 239
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 240
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v54

    .line 241
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v54, :cond_d

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v5, 0x1

    return v5

    .line 242
    :cond_d
    const/4 v5, 0x0

    goto :goto_d

    .line 247
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 251
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 253
    .restart local v37    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 254
    .local v42, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v42

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v54

    .line 255
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v54, :cond_e

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v5, 0x1

    return v5

    .line 256
    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    .line 261
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 264
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v56

    .line 265
    .local v56, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 267
    const/4 v5, 0x1

    return v5

    .line 271
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 275
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 276
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v56

    .line 277
    .restart local v56    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 279
    const/4 v5, 0x1

    return v5

    .line 283
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 287
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 288
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v56

    .line 289
    .restart local v56    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 291
    const/4 v5, 0x1

    return v5

    .line 295
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 299
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 301
    .restart local v37    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 302
    .restart local v42    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v42

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v56

    .line 303
    .restart local v56    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 305
    const/4 v5, 0x1

    return v5

    .line 309
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 312
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v54

    .line 313
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v54, :cond_f

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v5, 0x1

    return v5

    .line 314
    :cond_f
    const/4 v5, 0x0

    goto :goto_f

    .line 319
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_1a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 323
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 324
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 325
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v54, :cond_10

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v5, 0x1

    return v5

    .line 326
    :cond_10
    const/4 v5, 0x0

    goto :goto_10

    .line 331
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_1b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    const/4 v5, 0x1

    return v5

    .line 338
    :sswitch_1c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 341
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v5, 0x1

    return v5

    .line 347
    .end local v6    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v33, 0x1

    .line 350
    .local v33, "_arg0":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v54

    .line 351
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v54, :cond_12

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v5, 0x1

    return v5

    .line 349
    .end local v33    # "_arg0":Z
    .end local v54    # "_result":Z
    :cond_11
    const/16 v33, 0x0

    .restart local v33    # "_arg0":Z
    goto :goto_11

    .line 352
    .restart local v54    # "_result":Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_12

    .line 357
    .end local v33    # "_arg0":Z
    .end local v54    # "_result":Z
    :sswitch_1e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 361
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v39, 0x1

    .line 362
    .local v39, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v54

    .line 363
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v54, :cond_14

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v5, 0x1

    return v5

    .line 361
    .end local v39    # "_arg1":Z
    .end local v54    # "_result":Z
    :cond_13
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_13

    .line 364
    .restart local v54    # "_result":Z
    :cond_14
    const/4 v5, 0x0

    goto :goto_14

    .line 369
    .end local v6    # "_arg0":I
    .end local v39    # "_arg1":Z
    .end local v54    # "_result":Z
    :sswitch_1f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v33, 0x1

    .line 372
    .restart local v33    # "_arg0":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v54

    .line 373
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v54, :cond_16

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v5, 0x1

    return v5

    .line 371
    .end local v33    # "_arg0":Z
    .end local v54    # "_result":Z
    :cond_15
    const/16 v33, 0x0

    .restart local v33    # "_arg0":Z
    goto :goto_15

    .line 374
    .restart local v54    # "_result":Z
    :cond_16
    const/4 v5, 0x0

    goto :goto_16

    .line 379
    .end local v33    # "_arg0":Z
    .end local v54    # "_result":Z
    :sswitch_20
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v5, 0x1

    return v5

    .line 386
    :sswitch_21
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 389
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    const/4 v5, 0x1

    return v5

    .line 395
    .end local v6    # "_arg0":I
    :sswitch_22
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v5, 0x1

    return v5

    .line 402
    :sswitch_23
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 405
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v5, 0x1

    return v5

    .line 411
    .end local v6    # "_arg0":I
    :sswitch_24
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v5, 0x1

    return v5

    .line 418
    :sswitch_25
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 421
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    const/4 v5, 0x1

    return v5

    .line 427
    .end local v6    # "_arg0":I
    :sswitch_26
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v54

    .line 429
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v54, :cond_17

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    const/4 v5, 0x1

    return v5

    .line 430
    :cond_17
    const/4 v5, 0x0

    goto :goto_17

    .line 435
    .end local v54    # "_result":Z
    :sswitch_27
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v54

    .line 437
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v54, :cond_18

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v5, 0x1

    return v5

    .line 438
    :cond_18
    const/4 v5, 0x0

    goto :goto_18

    .line 443
    .end local v54    # "_result":Z
    :sswitch_28
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v54

    .line 445
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v54, :cond_19

    const/4 v5, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v5, 0x1

    return v5

    .line 446
    :cond_19
    const/4 v5, 0x0

    goto :goto_19

    .line 451
    .end local v54    # "_result":Z
    :sswitch_29
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 454
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v46

    .line 455
    .local v46, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v46, :cond_1a

    .line 457
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v5, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_1a
    const/4 v5, 0x1

    return v5

    .line 461
    :cond_1a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 467
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Landroid/os/Bundle;
    :sswitch_2a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 470
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocationById(I)Landroid/os/Bundle;

    move-result-object v46

    .line 471
    .restart local v46    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v46, :cond_1b

    .line 473
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v5, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 479
    :goto_1b
    const/4 v5, 0x1

    return v5

    .line 477
    :cond_1b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 483
    .end local v6    # "_arg0":I
    .end local v46    # "_result":Landroid/os/Bundle;
    :sswitch_2b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 486
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v52

    .line 487
    .local v52, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 489
    const/4 v5, 0x1

    return v5

    .line 493
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v52    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v45

    .line 495
    .local v45, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    const/4 v5, 0x1

    return v5

    .line 501
    .end local v45    # "_result":I
    :sswitch_2d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 504
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscriber(I)I

    move-result v45

    .line 505
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v5, 0x1

    return v5

    .line 511
    .end local v6    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_2e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v45

    .line 513
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v5, 0x1

    return v5

    .line 519
    .end local v45    # "_result":I
    :sswitch_2f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 522
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityForSubscriber(I)I

    move-result v45

    .line 523
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    const/4 v5, 0x1

    return v5

    .line 529
    .end local v6    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_30
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v45

    .line 531
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v5, 0x1

    return v5

    .line 537
    .end local v45    # "_result":I
    :sswitch_31
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 540
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateForSubscriber(I)I

    move-result v45

    .line 541
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/4 v5, 0x1

    return v5

    .line 547
    .end local v6    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_32
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v45

    .line 549
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    const/4 v5, 0x1

    return v5

    .line 555
    .end local v45    # "_result":I
    :sswitch_33
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 558
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSubscriber(I)I

    move-result v45

    .line 559
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v5, 0x1

    return v5

    .line 565
    .end local v6    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_34
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 568
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;)I

    move-result v45

    .line 569
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    const/4 v5, 0x1

    return v5

    .line 575
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_35
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 579
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 580
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    move-result v45

    .line 581
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v5, 0x1

    return v5

    .line 587
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_36
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 590
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;)I

    move-result v45

    .line 591
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v5, 0x1

    return v5

    .line 597
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_37
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 601
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 602
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    move-result v45

    .line 603
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v5, 0x1

    return v5

    .line 609
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_38
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 612
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 613
    .local v50, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    const/4 v5, 0x1

    return v5

    .line 619
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 623
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 624
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 625
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    const/4 v5, 0x1

    return v5

    .line 631
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v54

    .line 633
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v54, :cond_1c

    const/4 v5, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/4 v5, 0x1

    return v5

    .line 634
    :cond_1c
    const/4 v5, 0x0

    goto :goto_1c

    .line 639
    .end local v54    # "_result":Z
    :sswitch_3b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 643
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 645
    .restart local v37    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 646
    .restart local v42    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v42

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v54

    .line 647
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    if-eqz v54, :cond_1d

    const/4 v5, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    const/4 v5, 0x1

    return v5

    .line 648
    :cond_1d
    const/4 v5, 0x0

    goto :goto_1d

    .line 653
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_3c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v45

    .line 655
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/4 v5, 0x1

    return v5

    .line 661
    .end local v45    # "_result":I
    :sswitch_3d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 664
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    move-result v45

    .line 665
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    const/4 v5, 0x1

    return v5

    .line 671
    .end local v6    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_3e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v45

    .line 673
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/4 v5, 0x1

    return v5

    .line 679
    .end local v45    # "_result":I
    :sswitch_3f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 683
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 684
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v45

    .line 685
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    const/4 v5, 0x1

    return v5

    .line 691
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_40
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 694
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;)I

    move-result v45

    .line 695
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    const/4 v5, 0x1

    return v5

    .line 701
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_41
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 705
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 706
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v45

    .line 707
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/4 v5, 0x1

    return v5

    .line 713
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_42
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 717
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 718
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v45

    .line 719
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    const/4 v5, 0x1

    return v5

    .line 725
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_43
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v54

    .line 727
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    if-eqz v54, :cond_1e

    const/4 v5, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/4 v5, 0x1

    return v5

    .line 728
    :cond_1e
    const/4 v5, 0x0

    goto :goto_1e

    .line 733
    .end local v54    # "_result":Z
    :sswitch_44
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 736
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    move-result v54

    .line 737
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    if-eqz v54, :cond_1f

    const/4 v5, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    const/4 v5, 0x1

    return v5

    .line 738
    :cond_1f
    const/4 v5, 0x0

    goto :goto_1f

    .line 743
    .end local v6    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_45
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 746
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;)I

    move-result v45

    .line 747
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    const/4 v5, 0x1

    return v5

    .line 753
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_46
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 757
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 758
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    move-result v45

    .line 759
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v5, 0x1

    return v5

    .line 765
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_47
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 768
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v51

    .line 769
    .local v51, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 771
    const/4 v5, 0x1

    return v5

    .line 775
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_48
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 778
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    const/4 v5, 0x1

    return v5

    .line 784
    .end local v6    # "_arg0":I
    :sswitch_49
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    move-result v45

    .line 786
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v5, 0x1

    return v5

    .line 792
    .end local v45    # "_result":I
    :sswitch_4a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 795
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v47

    .line 796
    .local v47, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    if-eqz v47, :cond_20

    .line 798
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    const/4 v5, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 804
    :goto_20
    const/4 v5, 0x1

    return v5

    .line 802
    :cond_20
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 808
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v47    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 811
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(I)Z

    move-result v54

    .line 812
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    if-eqz v54, :cond_21

    const/4 v5, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    const/4 v5, 0x1

    return v5

    .line 813
    :cond_21
    const/4 v5, 0x0

    goto :goto_21

    .line 818
    .end local v6    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_4c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 822
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 824
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 826
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 828
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 830
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 832
    .local v11, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 833
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 834
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 836
    const/4 v5, 0x1

    return v5

    .line 840
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 844
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 846
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 848
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 850
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 852
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg5":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    .line 853
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 854
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 856
    const/4 v5, 0x1

    return v5

    .line 860
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 864
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 866
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 868
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 870
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 872
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg5":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    .line 873
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v55

    .line 874
    .local v55, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 876
    const/4 v5, 0x1

    return v5

    .line 880
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v55    # "_result":[B
    :sswitch_4f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 883
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 884
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 886
    const/4 v5, 0x1

    return v5

    .line 890
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 893
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v50

    .line 894
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 896
    const/4 v5, 0x1

    return v5

    .line 900
    .end local v6    # "_arg0":I
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_51
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 904
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 905
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v54

    .line 906
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    if-eqz v54, :cond_22

    const/4 v5, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    const/4 v5, 0x1

    return v5

    .line 907
    :cond_22
    const/4 v5, 0x0

    goto :goto_22

    .line 912
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_52
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v34

    .line 915
    .local v34, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v54

    .line 916
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    if-eqz v54, :cond_23

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    const/4 v5, 0x1

    return v5

    .line 917
    :cond_23
    const/4 v5, 0x0

    goto :goto_23

    .line 922
    .end local v34    # "_arg0":[B
    .end local v54    # "_result":Z
    :sswitch_53
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 925
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    move-result v54

    .line 926
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    if-eqz v54, :cond_24

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    const/4 v5, 0x1

    return v5

    .line 927
    :cond_24
    const/4 v5, 0x0

    goto :goto_24

    .line 932
    .end local v6    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_54
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 935
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    move-result v45

    .line 936
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    const/4 v5, 0x1

    return v5

    .line 942
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_55
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 945
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType(I)I

    move-result v45

    .line 946
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    const/4 v5, 0x1

    return v5

    .line 952
    .end local v6    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_56
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    move-result v45

    .line 954
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    const/4 v5, 0x1

    return v5

    .line 960
    .end local v45    # "_result":I
    :sswitch_57
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 963
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    const/4 v5, 0x1

    return v5

    .line 969
    .end local v6    # "_arg0":I
    :sswitch_58
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 972
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v49

    .line 973
    .local v49, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v49, :cond_25

    .line 975
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    const/4 v5, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 981
    :goto_25
    const/4 v5, 0x1

    return v5

    .line 979
    :cond_25
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 985
    .end local v6    # "_arg0":I
    .end local v49    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_59
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 989
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    .line 990
    sget-object v5, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/internal/telephony/OperatorInfo;

    .line 995
    :goto_26
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;)Z

    move-result v54

    .line 996
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    if-eqz v54, :cond_27

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    const/4 v5, 0x1

    return v5

    .line 993
    .end local v54    # "_result":Z
    :cond_26
    const/16 v36, 0x0

    .local v36, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_26

    .line 997
    .end local v36    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    .restart local v54    # "_result":Z
    :cond_27
    const/4 v5, 0x0

    goto :goto_27

    .line 1002
    .end local v6    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_5a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1006
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1007
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(II)Z

    move-result v54

    .line 1008
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    if-eqz v54, :cond_28

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    const/4 v5, 0x1

    return v5

    .line 1009
    :cond_28
    const/4 v5, 0x0

    goto :goto_28

    .line 1014
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v54    # "_result":Z
    :sswitch_5b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1018
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/16 v39, 0x1

    .line 1019
    .restart local v39    # "_arg1":Z
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    .line 1020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    const/4 v5, 0x1

    return v5

    .line 1018
    .end local v39    # "_arg1":Z
    :cond_29
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_29

    .line 1025
    .end local v6    # "_arg0":I
    .end local v39    # "_arg1":Z
    :sswitch_5c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1028
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v54

    .line 1029
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    if-eqz v54, :cond_2a

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    const/4 v5, 0x1

    return v5

    .line 1030
    :cond_2a
    const/4 v5, 0x0

    goto :goto_2a

    .line 1035
    .end local v6    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_5d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1039
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1040
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    .line 1041
    .local v57, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1043
    const/4 v5, 0x1

    return v5

    .line 1047
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v57    # "_result":[Ljava/lang/String;
    :sswitch_5e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v33, 0x1

    .line 1050
    .restart local v33    # "_arg0":Z
    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    const/4 v5, 0x1

    return v5

    .line 1049
    .end local v33    # "_arg0":Z
    :cond_2b
    const/16 v33, 0x0

    .restart local v33    # "_arg0":Z
    goto :goto_2b

    .line 1056
    .end local v33    # "_arg0":Z
    :sswitch_5f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1059
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v50

    .line 1060
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1062
    const/4 v5, 0x1

    return v5

    .line 1066
    .end local v6    # "_arg0":I
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_60
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1069
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v50

    .line 1070
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1072
    const/4 v5, 0x1

    return v5

    .line 1076
    .end local v6    # "_arg0":I
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_61
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus()I

    move-result v45

    .line 1078
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    const/4 v5, 0x1

    return v5

    .line 1084
    .end local v45    # "_result":I
    :sswitch_62
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1087
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v45

    .line 1088
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    const/4 v5, 0x1

    return v5

    .line 1094
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_63
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1097
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v45

    .line 1098
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    const/4 v5, 0x1

    return v5

    .line 1104
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_64
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    .line 1107
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/Intent;

    .line 1113
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1114
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v53

    .line 1115
    .local v53, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1117
    const/4 v5, 0x1

    return v5

    .line 1110
    .end local v7    # "_arg1":I
    .end local v53    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    const/16 v29, 0x0

    .local v29, "_arg0":Landroid/content/Intent;
    goto :goto_2c

    .line 1121
    .end local v29    # "_arg0":Landroid/content/Intent;
    :sswitch_65
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1125
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1127
    .restart local v37    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 1128
    .restart local v42    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v42

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v54

    .line 1129
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    if-eqz v54, :cond_2d

    const/4 v5, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    const/4 v5, 0x1

    return v5

    .line 1130
    :cond_2d
    const/4 v5, 0x0

    goto :goto_2d

    .line 1135
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_66
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1139
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1140
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1141
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1143
    const/4 v5, 0x1

    return v5

    .line 1147
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_67
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1151
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1152
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1153
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1155
    const/4 v5, 0x1

    return v5

    .line 1159
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_68
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1162
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    .line 1163
    .restart local v57    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1165
    const/4 v5, 0x1

    return v5

    .line 1169
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v57    # "_result":[Ljava/lang/String;
    :sswitch_69
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1172
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v54

    .line 1173
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    if-eqz v54, :cond_2e

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v5, 0x1

    return v5

    .line 1174
    :cond_2e
    const/4 v5, 0x0

    goto :goto_2e

    .line 1179
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_6a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v32

    .line 1183
    .local v32, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v38

    .line 1185
    .local v38, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v43

    .line 1187
    .local v43, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v44

    .line 1188
    .local v44, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v38

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v54

    .line 1189
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    if-eqz v54, :cond_2f

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    const/4 v5, 0x1

    return v5

    .line 1190
    :cond_2f
    const/4 v5, 0x0

    goto :goto_2f

    .line 1195
    .end local v32    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v43    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v44    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "_result":Z
    :sswitch_6b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v34

    .line 1199
    .restart local v34    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1200
    .local v41, "_arg1_length":I
    if-gez v41, :cond_30

    .line 1201
    const/16 v40, 0x0

    .line 1206
    :goto_30
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v45

    .line 1207
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1210
    const/4 v5, 0x1

    return v5

    .line 1204
    .end local v45    # "_result":I
    :cond_30
    move/from16 v0, v41

    new-array v0, v0, [B

    move-object/from16 v40, v0

    .local v40, "_arg1":[B
    goto :goto_30

    .line 1214
    .end local v34    # "_arg0":[B
    .end local v40    # "_arg1":[B
    .end local v41    # "_arg1_length":I
    :sswitch_6c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v54

    .line 1216
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    if-eqz v54, :cond_31

    const/4 v5, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    const/4 v5, 0x1

    return v5

    .line 1217
    :cond_31
    const/4 v5, 0x0

    goto :goto_31

    .line 1222
    .end local v54    # "_result":Z
    :sswitch_6d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    const/4 v5, 0x1

    return v5

    .line 1229
    :sswitch_6e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    sget-object v5, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [Landroid/telephony/RadioAccessFamily;

    .line 1232
    .local v35, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    const/4 v5, 0x1

    return v5

    .line 1238
    .end local v35    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_6f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1242
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1243
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v45

    .line 1244
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    const/4 v5, 0x1

    return v5

    .line 1250
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":I
    :sswitch_70
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    const/16 v33, 0x1

    .line 1253
    .restart local v33    # "_arg0":Z
    :goto_32
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 1254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    const/4 v5, 0x1

    return v5

    .line 1252
    .end local v33    # "_arg0":Z
    :cond_32
    const/16 v33, 0x0

    .restart local v33    # "_arg0":Z
    goto :goto_32

    .line 1259
    .end local v33    # "_arg0":Z
    :sswitch_71
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1262
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;)Z

    move-result v54

    .line 1263
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    if-eqz v54, :cond_33

    const/4 v5, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    const/4 v5, 0x1

    return v5

    .line 1264
    :cond_33
    const/4 v5, 0x0

    goto :goto_33

    .line 1269
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_72
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength()Z

    move-result v54

    .line 1271
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    if-eqz v54, :cond_34

    const/4 v5, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    const/4 v5, 0x1

    return v5

    .line 1272
    :cond_34
    const/4 v5, 0x0

    goto :goto_34

    .line 1277
    .end local v54    # "_result":Z
    :sswitch_73
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone()Z

    move-result v54

    .line 1279
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    if-eqz v54, :cond_35

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    const/4 v5, 0x1

    return v5

    .line 1280
    :cond_35
    const/4 v5, 0x0

    goto :goto_35

    .line 1285
    .end local v54    # "_result":Z
    :sswitch_74
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v54

    .line 1287
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    if-eqz v54, :cond_36

    const/4 v5, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    const/4 v5, 0x1

    return v5

    .line 1288
    :cond_36
    const/4 v5, 0x0

    goto :goto_36

    .line 1293
    .end local v54    # "_result":Z
    :sswitch_75
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v54

    .line 1295
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    if-eqz v54, :cond_37

    const/4 v5, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    const/4 v5, 0x1

    return v5

    .line 1296
    :cond_37
    const/4 v5, 0x0

    goto :goto_37

    .line 1301
    .end local v54    # "_result":Z
    :sswitch_76
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    move-result v54

    .line 1303
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    if-eqz v54, :cond_38

    const/4 v5, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1305
    const/4 v5, 0x1

    return v5

    .line 1304
    :cond_38
    const/4 v5, 0x0

    goto :goto_38

    .line 1309
    .end local v54    # "_result":Z
    :sswitch_77
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable()Z

    move-result v54

    .line 1311
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    if-eqz v54, :cond_39

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    const/4 v5, 0x1

    return v5

    .line 1312
    :cond_39
    const/4 v5, 0x0

    goto :goto_39

    .line 1317
    .end local v54    # "_result":Z
    :sswitch_78
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVolteAvailable()Z

    move-result v54

    .line 1319
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    if-eqz v54, :cond_3a

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    const/4 v5, 0x1

    return v5

    .line 1320
    :cond_3a
    const/4 v5, 0x0

    goto :goto_3a

    .line 1325
    .end local v54    # "_result":Z
    :sswitch_79
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable()Z

    move-result v54

    .line 1327
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    if-eqz v54, :cond_3b

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    const/4 v5, 0x1

    return v5

    .line 1328
    :cond_3b
    const/4 v5, 0x0

    goto :goto_3b

    .line 1333
    .end local v54    # "_result":Z
    :sswitch_7a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1336
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1337
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1339
    const/4 v5, 0x1

    return v5

    .line 1343
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_7b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    .line 1346
    sget-object v5, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telecom/PhoneAccount;

    .line 1351
    :goto_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v45

    .line 1352
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    const/4 v5, 0x1

    return v5

    .line 1349
    .end local v45    # "_result":I
    :cond_3c
    const/16 v30, 0x0

    .local v30, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_3c

    .line 1358
    .end local v30    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_7c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1361
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(I)V

    .line 1362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    const/4 v5, 0x1

    return v5

    .line 1367
    .end local v6    # "_arg0":I
    :sswitch_7d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocaleFromDefaultSim()Ljava/lang/String;

    move-result-object v50

    .line 1369
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1371
    const/4 v5, 0x1

    return v5

    .line 1375
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_7e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemActivityInfo()Landroid/telephony/ModemActivityInfo;

    move-result-object v48

    .line 1377
    .local v48, "_result":Landroid/telephony/ModemActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    if-eqz v48, :cond_3d

    .line 1379
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    const/4 v5, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/ModemActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1385
    :goto_3d
    const/4 v5, 0x1

    return v5

    .line 1383
    :cond_3d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d

    .line 1389
    .end local v48    # "_result":Landroid/telephony/ModemActivityInfo;
    :sswitch_7f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1392
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccAtr(I)Ljava/lang/String;

    move-result-object v50

    .line 1393
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1395
    const/4 v5, 0x1

    return v5

    .line 1399
    .end local v6    # "_arg0":I
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_80
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1403
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1404
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelWithSW(ILjava/lang/String;)[B

    move-result-object v55

    .line 1405
    .restart local v55    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1407
    const/4 v5, 0x1

    return v5

    .line 1411
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":[B
    :sswitch_81
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1415
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1417
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1419
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1421
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1423
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1425
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 1426
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIOUsingSlot(IIIIIILjava/lang/String;)[B

    move-result-object v55

    .line 1427
    .restart local v55    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1429
    const/4 v5, 0x1

    return v5

    .line 1433
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v55    # "_result":[B
    :sswitch_82
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1437
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1439
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1441
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1443
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1445
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1447
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1449
    .restart local v12    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1451
    .local v13, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, "_arg8":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 1452
    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIOExUsingSlot(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v55

    .line 1453
    .restart local v55    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1455
    const/4 v5, 0x1

    return v5

    .line 1459
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v13    # "_arg7":Ljava/lang/String;
    .end local v14    # "_arg8":Ljava/lang/String;
    .end local v55    # "_result":[B
    :sswitch_83
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1463
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1464
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelUsingSlot(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v47

    .line 1465
    .restart local v47    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    if-eqz v47, :cond_3e

    .line 1467
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    const/4 v5, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1473
    :goto_3e
    const/4 v5, 0x1

    return v5

    .line 1471
    :cond_3e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e

    .line 1477
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_84
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1481
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1482
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannelUsingSlot(II)Z

    move-result v54

    .line 1483
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    if-eqz v54, :cond_3f

    const/4 v5, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    const/4 v5, 0x1

    return v5

    .line 1484
    :cond_3f
    const/4 v5, 0x0

    goto :goto_3f

    .line 1489
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v54    # "_result":Z
    :sswitch_85
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1493
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1495
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1497
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1499
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1501
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1503
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1505
    .local v27, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg7":Ljava/lang/String;
    move-object/from16 v20, p0

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v28, v13

    .line 1506
    invoke-virtual/range {v20 .. v28}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelUsingSlot(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1507
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1509
    const/4 v5, 0x1

    return v5

    .line 1513
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v13    # "_arg7":Ljava/lang/String;
    .end local v27    # "_arg6":I
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_86
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1517
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1519
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1521
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1523
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1525
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1527
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 1528
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelUsingSlot(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1529
    .restart local v50    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1531
    const/4 v5, 0x1

    return v5

    .line 1535
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v50    # "_result":Ljava/lang/String;
    :sswitch_87
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1539
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    const/16 v39, 0x1

    .line 1540
    .restart local v39    # "_arg1":Z
    :goto_40
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setPolicyDataEnableForSubscriber(IZ)V

    .line 1541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    const/4 v5, 0x1

    return v5

    .line 1539
    .end local v39    # "_arg1":Z
    :cond_40
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_40

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
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
