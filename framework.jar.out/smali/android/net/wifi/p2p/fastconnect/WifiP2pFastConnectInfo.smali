.class public Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
.super Ljava/lang/Object;
.source "WifiP2pFastConnectInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pFastConnectInfo"

.field private static final connectCredentialPattern:Ljava/util/regex/Pattern;

.field private static random:Ljava/security/SecureRandom;


# instance fields
.field public authType:Ljava/lang/String;

.field public deviceAddress:Ljava/lang/String;

.field public encrType:Ljava/lang/String;

.field public gcIpAddress:Ljava/lang/String;

.field public goIpAddress:Ljava/lang/String;

.field public networkId:I

.field public psk:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public wfdDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->random:Ljava/security/SecureRandom;

    .line 91
    const-string/jumbo v0, "ssid=(DIRECT-[0-9a-zA-Z]{2}) auth_type=(0x[0-9]{4}) encr_type=(0x[0-9]{4}) psk=([0-9a-zA-Z]{8,63})"

    .line 90
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->connectCredentialPattern:Ljava/util/regex/Pattern;

    .line 202
    new-instance v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo$1;-><init>()V

    .line 201
    sput-object v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "192.168.49.1"

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "192.168.49.2"

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "192.168.49.1"

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "192.168.49.2"

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 132
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 138
    iget v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    .line 129
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 45
    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 51
    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 57
    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 63
    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 69
    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 75
    const-string/jumbo v3, "192.168.49.1"

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    .line 81
    const-string/jumbo v3, "192.168.49.2"

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 86
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    .line 108
    const-string/jumbo v3, "[ \n]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 112
    .local v0, "isMatch":Z
    const-string/jumbo v3, "WifiP2pFastConnectInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cedential string is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    array-length v3, v2

    if-ge v3, v6, :cond_0

    .line 114
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Malformed Credential String1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    sget-object v3, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->connectCredentialPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 118
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Malformed Credential String2"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 123
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 124
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static generateCredential()Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>()V

    .line 158
    .local v0, "info":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v2, "ssid":Ljava/lang/StringBuilder;
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->randomString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "psk":Ljava/lang/String;
    const-string/jumbo v3, "DIRECT-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->randomString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 163
    const-string/jumbo v3, "0x0020"

    iput-object v3, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 164
    const-string/jumbo v3, "0x0008"

    iput-object v3, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 165
    iput-object v1, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 166
    return-object v0
.end method

.method private static randomString(I)Ljava/lang/String;
    .locals 7
    .param p0, "length"    # I

    .prologue
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v4, "sbAlphabet":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "0123456789"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "alphabet":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 149
    .local v2, "n":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 150
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 172
    const-string/jumbo v1, " deviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const-string/jumbo v1, " ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string/jumbo v1, " auth_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string/jumbo v1, " encr_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string/jumbo v1, " psk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string/jumbo v1, " gcIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string/jumbo v1, " goIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string/jumbo v1, " wfdDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 190
    iget v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void
.end method
