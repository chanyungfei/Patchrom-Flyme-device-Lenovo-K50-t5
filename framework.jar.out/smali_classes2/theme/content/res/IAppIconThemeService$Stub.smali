.class public abstract Ltheme/content/res/IAppIconThemeService$Stub;
.super Landroid/os/Binder;
.source "IAppIconThemeService.java"

# interfaces
.implements Ltheme/content/res/IAppIconThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltheme/content/res/IAppIconThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltheme/content/res/IAppIconThemeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "theme.content.res.IAppIconThemeService"

.field static final TRANSACTION_getThemeIconInfo:I = 0x1

.field static final TRANSACTION_getThemeIconInfoByFileName:I = 0x2

.field static final TRANSACTION_getTimeStamp:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "theme.content.res.IAppIconThemeService"

    invoke-virtual {p0, p0, v0}, Ltheme/content/res/IAppIconThemeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltheme/content/res/IAppIconThemeService;
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
    const-string/jumbo v1, "theme.content.res.IAppIconThemeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ltheme/content/res/IAppIconThemeService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Ltheme/content/res/IAppIconThemeService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Ltheme/content/res/IAppIconThemeService$Stub$Proxy;

    invoke-direct {v1, p0}, Ltheme/content/res/IAppIconThemeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 43
    :sswitch_0
    const-string/jumbo v5, "theme.content.res.IAppIconThemeService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v6

    .line 48
    :sswitch_1
    const-string/jumbo v5, "theme.content.res.IAppIconThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Ltheme/content/res/IAppIconThemeService$Stub;->getThemeIconInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v6

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v5, "theme.content.res.IAppIconThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ltheme/content/res/IAppIconThemeService$Stub;->getThemeIconInfoByFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v6

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v5, "theme.content.res.IAppIconThemeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Ltheme/content/res/IAppIconThemeService$Stub;->getTimeStamp()J

    move-result-wide v2

    .line 72
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    return v6

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
