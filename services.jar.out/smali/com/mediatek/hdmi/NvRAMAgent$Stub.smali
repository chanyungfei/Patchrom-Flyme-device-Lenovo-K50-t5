.class public abstract Lcom/mediatek/hdmi/NvRAMAgent$Stub;
.super Landroid/os/Binder;
.source "NvRAMAgent.java"

# interfaces
.implements Lcom/mediatek/hdmi/NvRAMAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/NvRAMAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/NvRAMAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "NvRAMAgent"

.field static final TRANSACTION_READFILE:I = 0x1

.field static final TRANSACTION_WRITEFILE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string/jumbo v0, "NvRAMAgent"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/NvRAMAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 61
    if-nez p0, :cond_0

    .line 62
    return-object v1

    .line 64
    :cond_0
    const-string/jumbo v1, "NvRAMAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/hdmi/NvRAMAgent;

    if-eqz v1, :cond_1

    .line 66
    check-cast v0, Lcom/mediatek/hdmi/NvRAMAgent;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 68
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/hdmi/NvRAMAgent$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/hdmi/NvRAMAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 71
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x1

    .line 77
    sparse-switch p1, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 79
    :sswitch_0
    const-string/jumbo v5, "NvRAMAgent"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v6

    .line 82
    :sswitch_1
    const-string/jumbo v5, "NvRAMAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, "myArg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->readFile(I)[B

    move-result-object v3

    .line 86
    .local v3, "myResult":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 88
    return v6

    .line 90
    .end local v1    # "myArg0":I
    .end local v3    # "myResult":[B
    :sswitch_2
    const-string/jumbo v5, "NvRAMAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "myArg01":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 95
    .local v0, "arg1":[B
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->writeFile(I[B)I

    move-result v4

    .line 96
    .local v4, "myResult2":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v6

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
