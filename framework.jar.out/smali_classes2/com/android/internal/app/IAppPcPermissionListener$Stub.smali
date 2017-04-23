.class public abstract Lcom/android/internal/app/IAppPcPermissionListener$Stub;
.super Landroid/os/Binder;
.source "IAppPcPermissionListener.java"

# interfaces
.implements Lcom/android/internal/app/IAppPcPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppPcPermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppPcPermissionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppPcPermissionListener"

.field static final TRANSACTION_onNetworkBlocked:I = 0x2

.field static final TRANSACTION_onPermissionCheck:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.internal.app.IAppPcPermissionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppPcPermissionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcPermissionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.internal.app.IAppPcPermissionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IAppPcPermissionListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/internal/app/IAppPcPermissionListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IAppPcPermissionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IAppPcPermissionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 45
    :sswitch_0
    const-string/jumbo v0, "com.android.internal.app.IAppPcPermissionListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v0, "com.android.internal.app.IAppPcPermissionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    :goto_0
    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IAppPcPermissionListener$Stub;->onPermissionCheck(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v8

    .line 69
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v8, :cond_1

    move v0, v9

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v9

    .line 66
    .end local v8    # "_result":Z
    :cond_0
    const/4 v6, 0x0

    .local v6, "_arg5":Landroid/os/Bundle;
    goto :goto_0

    .end local v6    # "_arg5":Landroid/os/Bundle;
    .restart local v8    # "_result":Z
    :cond_1
    move v0, v10

    .line 70
    goto :goto_1

    .line 75
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_2
    const-string/jumbo v0, "com.android.internal.app.IAppPcPermissionListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/app/IAppPcPermissionListener$Stub;->onNetworkBlocked(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v9

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
