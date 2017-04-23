.class public abstract Landroid/app/IDisplayEffectManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayEffectManager.java"

# interfaces
.implements Landroid/app/IDisplayEffectManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IDisplayEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IDisplayEffectManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IDisplayEffectManager"

.field static final TRANSACTION_getCurrentLevel:I = 0x4

.field static final TRANSACTION_getMode:I = 0x8

.field static final TRANSACTION_getSupportedDisplayEffect:I = 0x1

.field static final TRANSACTION_getSupportedMaxLevel:I = 0x3

.field static final TRANSACTION_getSupportedMode:I = 0x2

.field static final TRANSACTION_setCABC:I = 0x9

.field static final TRANSACTION_setDisplayEffectLevel:I = 0x5

.field static final TRANSACTION_setModeFromSettings:I = 0x6

.field static final TRANSACTION_setModeOverride:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.app.IDisplayEffectManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IDisplayEffectManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IDisplayEffectManager;
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
    const-string/jumbo v1, "android.app.IDisplayEffectManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IDisplayEffectManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/app/IDisplayEffectManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IDisplayEffectManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IDisplayEffectManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/IDisplayEffectManager$Stub;->getSupportedDisplayEffect()[Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 56
    return v5

    .line 60
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/IDisplayEffectManager$Stub;->getSupportedMode()[Ljava/lang/String;

    move-result-object v3

    .line 62
    .restart local v3    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 64
    return v5

    .line 68
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IDisplayEffectManager$Stub;->getSupportedMaxLevel(I)I

    move-result v2

    .line 72
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return v5

    .line 78
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_4
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IDisplayEffectManager$Stub;->getCurrentLevel(I)I

    move-result v2

    .line 82
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v5

    .line 88
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/app/IDisplayEffectManager$Stub;->setDisplayEffectLevel(II)I

    move-result v2

    .line 94
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v5

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_6
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IDisplayEffectManager$Stub;->setModeFromSettings(I)I

    move-result v2

    .line 104
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v5

    .line 110
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_7
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IDisplayEffectManager$Stub;->setModeOverride(I)I

    move-result v2

    .line 114
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return v5

    .line 120
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_8
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/app/IDisplayEffectManager$Stub;->getMode()I

    move-result v2

    .line 122
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v5

    .line 128
    .end local v2    # "_result":I
    :sswitch_9
    const-string/jumbo v4, "android.app.IDisplayEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IDisplayEffectManager$Stub;->setCABC(I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v5

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
