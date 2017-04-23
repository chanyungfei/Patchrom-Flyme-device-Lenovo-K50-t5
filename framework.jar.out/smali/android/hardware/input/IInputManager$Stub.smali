.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xd

.field static final TRANSACTION_cancelVibrate:I = 0x11

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xa

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0x9

.field static final TRANSACTION_getKeyboardLayouts:I = 0x8

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xc

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x6

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0xf

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0x7

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
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
    const-string/jumbo v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/input/IInputManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 27
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

    .line 293
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v26

    return v26

    .line 43
    :sswitch_0
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v26, 0x1

    return v26

    .line 48
    :sswitch_1
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 51
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v20

    .line 52
    .local v20, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v20, :cond_0

    .line 54
    const/16 v26, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_0
    const/16 v26, 0x1

    return v26

    .line 58
    :cond_0
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v23

    .line 66
    .local v23, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    const/16 v26, 0x1

    return v26

    .line 72
    .end local v23    # "_result":[I
    :sswitch_3
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 78
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    .line 80
    .local v14, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 81
    .local v17, "_arg3_length":I
    if-gez v17, :cond_1

    .line 82
    const/16 v16, 0x0

    .line 87
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v8, v14, v1}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v22

    .line 88
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v22, :cond_2

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 91
    const/16 v26, 0x1

    return v26

    .line 85
    .end local v22    # "_result":Z
    :cond_1
    move/from16 v0, v17

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .local v16, "_arg3":[Z
    goto :goto_1

    .line 89
    .end local v16    # "_arg3":[Z
    .restart local v22    # "_result":Z
    :cond_2
    const/16 v26, 0x0

    goto :goto_2

    .line 95
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v14    # "_arg2":[I
    .end local v17    # "_arg3_length":I
    .end local v22    # "_result":Z
    :sswitch_4
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/16 v26, 0x1

    return v26

    .line 104
    .end local v3    # "_arg0":I
    :sswitch_5
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_3

    .line 107
    sget-object v26, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputEvent;

    .line 113
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 114
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v22

    .line 115
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v22, :cond_4

    const/16 v26, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/16 v26, 0x1

    return v26

    .line 110
    .end local v8    # "_arg1":I
    .end local v22    # "_result":Z
    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/view/InputEvent;
    goto :goto_3

    .line 116
    .end local v6    # "_arg0":Landroid/view/InputEvent;
    .restart local v8    # "_arg1":I
    .restart local v22    # "_result":Z
    :cond_4
    const/16 v26, 0x0

    goto :goto_4

    .line 121
    .end local v8    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_6
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 126
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v19

    .line 127
    .local v19, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v19, :cond_5

    .line 129
    const/16 v26, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 135
    :goto_5
    const/16 v26, 0x1

    return v26

    .line 133
    :cond_5
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 139
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v19    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_7
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 143
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 145
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_6

    .line 146
    sget-object v26, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/input/TouchCalibration;

    .line 151
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v13}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    const/16 v26, 0x1

    return v26

    .line 149
    :cond_6
    const/4 v13, 0x0

    .local v13, "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_6

    .line 157
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v13    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_8
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v24

    .line 159
    .local v24, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/16 v26, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 161
    const/16 v26, 0x1

    return v26

    .line 165
    .end local v24    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_9
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 168
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v18

    .line 169
    .local v18, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v18, :cond_7

    .line 171
    const/16 v26, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/16 v26, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 177
    :goto_7
    const/16 v26, 0x1

    return v26

    .line 175
    :cond_7
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 181
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_a
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_8

    .line 184
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    .line 189
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v21

    .line 190
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    const/16 v26, 0x1

    return v26

    .line 187
    .end local v21    # "_result":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_8

    .line 196
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_b
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_9

    .line 199
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    .line 205
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/16 v26, 0x1

    return v26

    .line 202
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_9

    .line 212
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_c
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_a

    .line 215
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    .line 220
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v25

    .line 221
    .local v25, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 223
    const/16 v26, 0x1

    return v26

    .line 218
    .end local v25    # "_result":[Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_a

    .line 227
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_d
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_b

    .line 230
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    .line 236
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 237
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/16 v26, 0x1

    return v26

    .line 233
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_b

    .line 243
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_e
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_c

    .line 246
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    .line 252
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 253
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/16 v26, 0x1

    return v26

    .line 249
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_c

    .line 259
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_f
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v4

    .line 262
    .local v4, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/16 v26, 0x1

    return v26

    .line 268
    .end local v4    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_10
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v11

    .line 274
    .local v11, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 276
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 277
    .local v15, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v12, v15}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    const/16 v26, 0x1

    return v26

    .line 283
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":[J
    .end local v12    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 288
    .local v9, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/16 v26, 0x1

    return v26

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
