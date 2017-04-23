.class public abstract Lcom/mediatek/common/mom/IMessageInterceptListener$Stub;
.super Landroid/os/Binder;
.source "IMessageInterceptListener.java"

# interfaces
.implements Lcom/mediatek/common/mom/IMessageInterceptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/mom/IMessageInterceptListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/IMessageInterceptListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.mom.IMessageInterceptListener"

.field static final TRANSACTION_onNewSMSCheck:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "com.mediatek.common.mom.IMessageInterceptListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/mom/IMessageInterceptListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMessageInterceptListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "com.mediatek.common.mom.IMessageInterceptListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/mom/IMessageInterceptListener;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/mediatek/common/mom/IMessageInterceptListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/common/mom/IMessageInterceptListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/mom/IMessageInterceptListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 48
    :sswitch_0
    const-string/jumbo v2, "com.mediatek.common.mom.IMessageInterceptListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v3

    .line 53
    :sswitch_1
    const-string/jumbo v4, "com.mediatek.common.mom.IMessageInterceptListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 61
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMessageInterceptListener$Stub;->onNewSMSCheck(Landroid/os/Bundle;)Z

    move-result v1

    .line 62
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return v3

    .line 59
    .end local v1    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
