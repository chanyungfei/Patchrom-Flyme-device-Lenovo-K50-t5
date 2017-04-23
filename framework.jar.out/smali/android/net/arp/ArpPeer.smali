.class public Landroid/net/arp/ArpPeer;
.super Ljava/lang/Object;
.source "ArpPeer.java"


# static fields
.field private static final ARP_LENGTH:I = 0x1c

.field private static final ARP_TYPE:I = 0x806

.field private static final DBG:Z = false

.field private static final ETHERNET_LENGTH:I = 0xe

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final IPV4_LENGTH:I = 0x4

.field private static final L2_BROADCAST:[B

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAX_LENGTH:I = 0x5dc

.field private static final PKT_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArpPeer"


# instance fields
.field private mHwAddr:[B

.field private mIface:Ljava/net/NetworkInterface;

.field private mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

.field private final mMyAddr:Ljava/net/InetAddress;

.field private final mMyMac:[B

.field private final mPeer:Ljava/net/InetAddress;

.field private mSocket:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/arp/ArpPeer;->L2_BROADCAST:[B

    .line 54
    return-void

    .line 67
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "myAddr"    # Ljava/net/InetAddress;
    .param p3, "peer"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/arp/ArpPeer;->mMyMac:[B

    .line 89
    iput-object p1, p0, Landroid/net/arp/ArpPeer;->mIfaceName:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Landroid/net/arp/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    .line 92
    instance-of v0, p2, Ljava/net/Inet6Address;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IPv6 unsupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iput-object p3, p0, Landroid/net/arp/ArpPeer;->mPeer:Ljava/net/InetAddress;

    .line 98
    invoke-direct {p0}, Landroid/net/arp/ArpPeer;->initInterface()Z

    .line 99
    invoke-direct {p0}, Landroid/net/arp/ArpPeer;->initSocket()Z

    .line 101
    const-string/jumbo v0, "ArpPeer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ArpPeer in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method private static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 290
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static doArp(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 1
    .param p0, "interfaceName"    # Ljava/lang/String;
    .param p1, "myAddr"    # Ljava/net/InetAddress;
    .param p2, "peerAddr"    # Ljava/net/InetAddress;
    .param p3, "timeoutMillis"    # I

    .prologue
    .line 237
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/arp/ArpPeer;->doArp(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;II)Z

    move-result v0

    return v0
.end method

.method public static doArp(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;II)Z
    .locals 10
    .param p0, "interfaceName"    # Ljava/lang/String;
    .param p1, "myAddr"    # Ljava/net/InetAddress;
    .param p2, "peerAddr"    # Ljava/net/InetAddress;
    .param p3, "timeoutMillis"    # I
    .param p4, "totalTimes"    # I

    .prologue
    .line 252
    const/4 v6, 0x0

    .line 253
    .local v6, "success":Z
    const/4 v2, 0x0

    .line 255
    .local v2, "peer":Landroid/net/arp/ArpPeer;
    :try_start_0
    new-instance v3, Landroid/net/arp/ArpPeer;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/arp/ArpPeer;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v2    # "peer":Landroid/net/arp/ArpPeer;
    .local v3, "peer":Landroid/net/arp/ArpPeer;
    const/4 v4, 0x0

    .line 257
    .local v4, "responses":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 258
    :try_start_1
    invoke-virtual {v3, p3}, Landroid/net/arp/ArpPeer;->doArp(I)[B

    move-result-object v7

    if-eqz v7, :cond_0

    .line 259
    add-int/lit8 v4, v4, 0x1

    .line 257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    const-string/jumbo v7, "ArpPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ARP test result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    if-ne v4, p4, :cond_3

    .line 264
    const/4 v7, 0x1

    .line 273
    if-eqz v3, :cond_2

    .line 274
    invoke-virtual {v3}, Landroid/net/arp/ArpPeer;->close()V

    .line 264
    :cond_2
    return v7

    .line 273
    :cond_3
    if-eqz v3, :cond_4

    .line 274
    invoke-virtual {v3}, Landroid/net/arp/ArpPeer;->close()V

    :cond_4
    move-object v2, v3

    .line 277
    .end local v1    # "i":I
    .end local v3    # "peer":Landroid/net/arp/ArpPeer;
    .end local v4    # "responses":I
    :cond_5
    :goto_1
    return v6

    .line 270
    .restart local v2    # "peer":Landroid/net/arp/ArpPeer;
    :catch_0
    move-exception v0

    .line 271
    .end local v2    # "peer":Landroid/net/arp/ArpPeer;
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v7, "ArpPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    if-eqz v2, :cond_5

    .line 274
    invoke-virtual {v2}, Landroid/net/arp/ArpPeer;->close()V

    goto :goto_1

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "peer":Landroid/net/arp/ArpPeer;
    :catch_1
    move-exception v5

    .line 269
    .end local v2    # "peer":Landroid/net/arp/ArpPeer;
    .local v5, "se":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string/jumbo v7, "ArpPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ARP test initiation failure: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    if-eqz v2, :cond_5

    .line 274
    invoke-virtual {v2}, Landroid/net/arp/ArpPeer;->close()V

    goto :goto_1

    .line 272
    .end local v5    # "se":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 273
    :goto_4
    if-eqz v2, :cond_6

    .line 274
    invoke-virtual {v2}, Landroid/net/arp/ArpPeer;->close()V

    .line 272
    :cond_6
    throw v7

    .restart local v1    # "i":I
    .restart local v3    # "peer":Landroid/net/arp/ArpPeer;
    .restart local v4    # "responses":I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "peer":Landroid/net/arp/ArpPeer;
    .local v2, "peer":Landroid/net/arp/ArpPeer;
    goto :goto_4

    .line 266
    .end local v2    # "peer":Landroid/net/arp/ArpPeer;
    .restart local v3    # "peer":Landroid/net/arp/ArpPeer;
    :catch_2
    move-exception v5

    .restart local v5    # "se":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "peer":Landroid/net/arp/ArpPeer;
    .restart local v2    # "peer":Landroid/net/arp/ArpPeer;
    goto :goto_3

    .line 270
    .end local v2    # "peer":Landroid/net/arp/ArpPeer;
    .end local v5    # "se":Ljava/lang/Exception;
    .restart local v3    # "peer":Landroid/net/arp/ArpPeer;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "peer":Landroid/net/arp/ArpPeer;
    .restart local v2    # "peer":Landroid/net/arp/ArpPeer;
    goto :goto_2
.end method

.method private initInterface()Z
    .locals 4

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/net/arp/ArpPeer;->mIfaceName:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Landroid/net/arp/ArpPeer;->mIface:Ljava/net/NetworkInterface;

    .line 107
    iget-object v1, p0, Landroid/net/arp/ArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    iput-object v1, p0, Landroid/net/arp/ArpPeer;->mHwAddr:[B

    .line 108
    const-string/jumbo v1, "ArpPeer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mac addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/arp/ArpPeer;->mHwAddr:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/arp/ArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Landroid/system/PacketSocketAddress;

    iget-object v2, p0, Landroid/net/arp/ArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    .line 110
    sget-object v3, Landroid/net/arp/ArpPeer;->L2_BROADCAST:[B

    .line 109
    invoke-direct {v1, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    iput-object v1, p0, Landroid/net/arp/ArpPeer;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    .line 111
    iget-object v1, p0, Landroid/net/arp/ArpPeer;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    const/16 v2, 0x806

    iput-short v2, v1, Landroid/system/PacketSocketAddress;->sll_protocol:S
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x1

    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/net/SocketException;
    const-string/jumbo v1, "ArpPeer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t determine ifindex or MAC address for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/arp/ArpPeer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x0

    return v1
.end method

.method private initSocket()Z
    .locals 5

    .prologue
    .line 121
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v4, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/arp/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    .line 122
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v2, Landroid/system/OsConstants;->ETH_P_ARP:I

    int-to-short v2, v2

    .line 123
    iget-object v3, p0, Landroid/net/arp/ArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    .line 122
    invoke-direct {v0, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 124
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    iget-object v2, p0, Landroid/net/arp/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/4 v2, 0x1

    return v2

    .line 125
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ArpPeer"

    const-string/jumbo v3, "Error creating packet socket"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 284
    const-string/jumbo v0, "ArpPeer"

    const-string/jumbo v1, "Close arp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Landroid/net/arp/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/arp/ArpPeer;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 283
    return-void
.end method

.method public doArp(I)[B
    .locals 20
    .param p1, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 139
    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 140
    .local v8, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/arp/ArpPeer;->mPeer:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    .line 141
    .local v9, "desiredIp":[B
    const-string/jumbo v2, "ArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "My MAC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/arp/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move/from16 v0, p1

    int-to-long v4, v0

    add-long v18, v2, v4

    .line 144
    .local v18, "timeout":J
    const-string/jumbo v2, "ArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doArp in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 149
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 152
    sget-object v2, Landroid/net/arp/ArpPeer;->L2_BROADCAST:[B

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/arp/ArpPeer;->mHwAddr:[B

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    const/16 v2, 0x806

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 156
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 157
    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v2, v2

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 158
    const/4 v2, 0x6

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/arp/ArpPeer;->mHwAddr:[B

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/arp/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 163
    const/4 v2, 0x6

    new-array v2, v2, [B

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 168
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/arp/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/net/arp/ArpPeer;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const/16 v2, 0x5dc

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 178
    .local v16, "socketBuf":[B
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-gez v2, :cond_1

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v10, v18, v2

    .line 180
    .local v10, "duration":J
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v17

    .line 181
    .local v17, "t":Landroid/system/StructTimeval;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/arp/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    move-object/from16 v0, v17

    invoke-static {v2, v3, v4, v0}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 182
    const-string/jumbo v2, "ArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wait ARP reply in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v12, 0x0

    .line 186
    .local v12, "readLen":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/arp/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/16 v4, 0x5dc

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v12

    .line 187
    const-string/jumbo v2, "ArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    const/16 v2, 0x2a

    if-lt v12, v2, :cond_0

    .line 199
    const/16 v2, 0x1c

    new-array v13, v2, [B

    .line 201
    .local v13, "recvBuf":[B
    const/16 v2, 0xe

    const/4 v3, 0x0

    const/16 v4, 0x1c

    move-object/from16 v0, v16

    invoke-static {v0, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 206
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aget-byte v2, v13, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 207
    const/4 v2, 0x2

    aget-byte v2, v13, v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aget-byte v2, v13, v2

    if-nez v2, :cond_0

    .line 208
    const/4 v2, 0x4

    aget-byte v2, v13, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 209
    const/4 v2, 0x5

    aget-byte v2, v13, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 210
    const/4 v2, 0x6

    aget-byte v2, v13, v2

    if-nez v2, :cond_0

    const/4 v2, 0x7

    aget-byte v2, v13, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 212
    const/16 v2, 0xe

    aget-byte v2, v13, v2

    const/4 v3, 0x0

    aget-byte v3, v9, v3

    if-ne v2, v3, :cond_0

    const/16 v2, 0xf

    aget-byte v2, v13, v2

    const/4 v3, 0x1

    aget-byte v3, v9, v3

    if-ne v2, v3, :cond_0

    .line 213
    const/16 v2, 0x10

    aget-byte v2, v13, v2

    const/4 v3, 0x2

    aget-byte v3, v9, v3

    if-ne v2, v3, :cond_0

    const/16 v2, 0x11

    aget-byte v2, v13, v2

    const/4 v3, 0x3

    aget-byte v3, v9, v3

    if-ne v2, v3, :cond_0

    .line 216
    const/4 v2, 0x6

    new-array v14, v2, [B

    .line 217
    .local v14, "result":[B
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v13, v2, v14, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 218
    const-string/jumbo v2, "ArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target mac addr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-object v14

    .line 169
    .end local v10    # "duration":J
    .end local v12    # "readLen":I
    .end local v13    # "recvBuf":[B
    .end local v14    # "result":[B
    .end local v16    # "socketBuf":[B
    .end local v17    # "t":Landroid/system/StructTimeval;
    :catch_0
    move-exception v15

    .line 172
    .local v15, "se":Ljava/lang/Exception;
    const-string/jumbo v2, "ArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ARP send failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v2, 0x0

    return-object v2

    .line 188
    .end local v15    # "se":Ljava/lang/Exception;
    .restart local v10    # "duration":J
    .restart local v12    # "readLen":I
    .restart local v16    # "socketBuf":[B
    .restart local v17    # "t":Landroid/system/StructTimeval;
    :catch_1
    move-exception v15

    .line 191
    .restart local v15    # "se":Ljava/lang/Exception;
    const-string/jumbo v2, "ArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ARP read failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v2, 0x0

    return-object v2

    .line 224
    .end local v10    # "duration":J
    .end local v12    # "readLen":I
    .end local v15    # "se":Ljava/lang/Exception;
    .end local v17    # "t":Landroid/system/StructTimeval;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
