.class public abstract Lcom/mediatek/search/ISearchEngineManagerService$Stub;
.super Landroid/os/Binder;
.source "ISearchEngineManagerService.java"

# interfaces
.implements Lcom/mediatek/search/ISearchEngineManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/ISearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.search.ISearchEngineManagerService"

.field static final TRANSACTION_getAvailables:I = 0x1

.field static final TRANSACTION_getBestMatch:I = 0x3

.field static final TRANSACTION_getDefault:I = 0x2

.field static final TRANSACTION_getSearchEngine:I = 0x4

.field static final TRANSACTION_setDefault:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/search/ISearchEngineManagerService;
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
    const-string/jumbo v1, "com.mediatek.search.ISearchEngineManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/search/ISearchEngineManagerService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/search/ISearchEngineManagerService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 45
    :sswitch_0
    const-string/jumbo v7, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v8

    .line 50
    :sswitch_1
    const-string/jumbo v7, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getAvailables()Ljava/util/List;

    move-result-object v5

    .line 52
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 54
    return v8

    .line 58
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    :sswitch_2
    const-string/jumbo v9, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefault()Lcom/mediatek/common/search/SearchEngine;

    move-result-object v4

    .line 60
    .local v4, "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v4, p3, v8}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_0
    return v8

    .line 66
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v4    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :sswitch_3
    const-string/jumbo v9, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v4

    .line 78
    .restart local v4    # "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v4, p3, v8}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    :goto_1
    return v8

    .line 84
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 90
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :sswitch_4
    const-string/jumbo v9, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v4

    .line 96
    .restart local v4    # "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v4, :cond_2

    .line 98
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v4, p3, v8}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    :goto_2
    return v8

    .line 102
    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 108
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :sswitch_5
    const-string/jumbo v9, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 111
    sget-object v9, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/search/SearchEngine;

    .line 116
    :goto_3
    invoke-virtual {p0, v1}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->setDefault(Lcom/mediatek/common/search/SearchEngine;)Z

    move-result v6

    .line 117
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v6, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return v8

    .line 114
    .end local v6    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .local v1, "_arg0":Lcom/mediatek/common/search/SearchEngine;
    goto :goto_3

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
