.class public abstract Lcom/android/internal/policy/ILenovoFrameworkService$Stub;
.super Landroid/os/Binder;
.source "ILenovoFrameworkService.java"

# interfaces
.implements Lcom/android/internal/policy/ILenovoFrameworkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/ILenovoFrameworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/ILenovoFrameworkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.ILenovoFrameworkService"

.field static final TRANSACTION_isGestureUnlockScreenReady:I = 0x1

.field static final TRANSACTION_onScreenTurnedOff:I = 0x5

.field static final TRANSACTION_onScreenTurnedOn:I = 0x4

.field static final TRANSACTION_setLenovoFrameworkCallback:I = 0x2

.field static final TRANSACTION_showGestureUnlockScreen:I = 0x3

.field static final TRANSACTION_triggerSnapshot:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.internal.policy.ILenovoFrameworkService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ILenovoFrameworkService;
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
    const-string/jumbo v1, "com.android.internal.policy.ILenovoFrameworkService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/ILenovoFrameworkService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/policy/ILenovoFrameworkService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/ILenovoFrameworkService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 42
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.policy.ILenovoFrameworkService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v4

    .line 47
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.policy.ILenovoFrameworkService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub;->isGestureUnlockScreenReady()Z

    move-result v2

    .line 49
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return v4

    .line 50
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 55
    .end local v2    # "_result":Z
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.policy.ILenovoFrameworkService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/ILenovoFrameworkCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ILenovoFrameworkCallBack;

    move-result-object v1

    .line 58
    .local v1, "_arg0":Lcom/android/internal/policy/ILenovoFrameworkCallBack;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub;->setLenovoFrameworkCallback(Lcom/android/internal/policy/ILenovoFrameworkCallBack;)V

    .line 59
    return v4

    .line 63
    .end local v1    # "_arg0":Lcom/android/internal/policy/ILenovoFrameworkCallBack;
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.policy.ILenovoFrameworkService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub;->showGestureUnlockScreen()V

    .line 65
    return v4

    .line 69
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.policy.ILenovoFrameworkService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub;->onScreenTurnedOn()V

    .line 71
    return v4

    .line 75
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.policy.ILenovoFrameworkService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub;->onScreenTurnedOff(I)V

    .line 79
    return v4

    .line 83
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.policy.ILenovoFrameworkService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub;->triggerSnapshot(I)V

    .line 87
    return v4

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
