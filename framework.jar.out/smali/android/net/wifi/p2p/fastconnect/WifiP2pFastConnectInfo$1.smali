.class final Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pFastConnectInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 204
    new-instance v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>()V

    .line 205
    .local v0, "info":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    .line 213
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 217
    new-array v0, p1, [Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo$1;->newArray(I)[Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v0

    return-object v0
.end method
