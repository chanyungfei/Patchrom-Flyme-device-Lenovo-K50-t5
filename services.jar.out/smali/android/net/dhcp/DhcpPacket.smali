.class abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateway:Ljava/net/Inet4Address;

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field private final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 38
    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    .line 28
    return-void

    .line 39
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

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .locals 0
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B
    .param p8, "broadcast"    # Z

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    .line 293
    iput-short p2, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    .line 294
    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 295
    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 296
    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    .line 297
    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    .line 298
    iput-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    .line 299
    iput-boolean p8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    .line 291
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # B

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 503
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 504
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 501
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 566
    if-eqz p2, :cond_0

    .line 567
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 569
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 565
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Short;

    .prologue
    .line 555
    if-eqz p2, :cond_0

    .line 556
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 557
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 558
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 554
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 578
    :try_start_0
    const-string/jumbo v1, "US-ASCII"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String is not US-ASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "addr"    # Ljava/net/Inet4Address;

    .prologue
    .line 526
    if-eqz p2, :cond_0

    .line 527
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 525
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v6, 0xff

    .line 535
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 537
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v2, v3, 0x4

    .line 538
    .local v2, "optionLen":I
    if-le v2, v6, :cond_2

    .line 539
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DHCP option too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    const-string/jumbo v5, " vs. "

    .line 539
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 543
    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 544
    int-to-byte v3, v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 546
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 547
    .local v0, "addr":Ljava/net/Inet4Address;
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 534
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :cond_3
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "payload"    # [B

    .prologue
    const/16 v3, 0xff

    .line 511
    if-eqz p2, :cond_1

    .line 512
    array-length v0, p2

    if-le v0, v3, :cond_0

    .line 513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCP option too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 514
    array-length v2, p2

    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 514
    const-string/jumbo v2, " vs. "

    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 517
    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 518
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 510
    :cond_1
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 588
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 587
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p9, "gateway"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1111
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpAckPacket;

    .line 1112
    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    .line 1111
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1113
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    .line 1114
    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1115
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1116
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1117
    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1118
    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1119
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1120
    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z
    .param p5, "expectedParams"    # [B

    .prologue
    .line 1076
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .line 1078
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1079
    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[B)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p3, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "mac"    # [B

    .prologue
    .line 1128
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p2

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1130
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    const-string/jumbo v1, "requested address not available"

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 1131
    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1132
    const/16 v1, 0x44

    const/16 v2, 0x43

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p9, "gateway"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1091
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpOfferPacket;

    .line 1092
    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    .line 1091
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1093
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    .line 1094
    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1095
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1096
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1097
    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1098
    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1099
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1100
    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "broadcast"    # Z
    .param p5, "clientMac"    # [B
    .param p6, "requestedIpAddress"    # Ljava/net/Inet4Address;
    .param p7, "serverIdentifier"    # Ljava/net/Inet4Address;
    .param p8, "requestedParams"    # [B
    .param p9, "hostName"    # Ljava/lang/String;

    .prologue
    .line 1142
    new-instance v1, Landroid/net/dhcp/DhcpRequestPacket;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1144
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1145
    iput-object p7, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1146
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 1147
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1148
    const/16 v2, 0x43

    const/16 v3, 0x44

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1149
    .local v7, "result":Ljava/nio/ByteBuffer;
    return-object v7
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .locals 11
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "seed"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v7, 0x0

    const v10, 0xffff

    .line 460
    move v6, p2

    .line 461
    .local v6, "sum":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 465
    .local v1, "bufPosition":I
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 466
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 469
    .local v5, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 471
    sub-int v8, p4, p3

    div-int/lit8 v8, v8, 0x2

    new-array v4, v8, [S

    .line 472
    .local v4, "shortArray":[S
    invoke-virtual {v5, v4}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 474
    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_0

    aget-short v3, v4, v7

    .line 475
    .local v3, "s":S
    invoke-static {v3}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v9

    add-int/2addr v6, v9

    .line 474
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 478
    .end local v3    # "s":S
    :cond_0
    array-length v7, v4

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr p3, v7

    .line 481
    if-eq p4, p3, :cond_2

    .line 482
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    int-to-short v0, v7

    .line 485
    .local v0, "b":S
    if-gez v0, :cond_1

    .line 486
    add-int/lit16 v7, v0, 0x100

    int-to-short v0, v7

    .line 489
    :cond_1
    mul-int/lit16 v7, v0, 0x100

    add-int/2addr v6, v7

    .line 492
    .end local v0    # "b":S
    :cond_2
    shr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v10

    and-int v8, v6, v10

    add-int v6, v7, v8

    .line 493
    shr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v10

    add-int/2addr v7, v6

    and-int v6, v7, v10

    .line 494
    not-int v2, v6

    .line 495
    .local v2, "negated":I
    int-to-short v7, v2

    invoke-static {v7}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v7

    return v7
.end method

.method public static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .locals 71
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "pktType"    # I

    .prologue
    .line 690
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v25, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v31, 0x0

    .line 692
    .local v31, "gateway":Ljava/net/Inet4Address;
    const/16 v62, 0x0

    .line 693
    .local v62, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v56, 0x0

    .line 694
    .local v56, "netMask":Ljava/net/Inet4Address;
    const/16 v54, 0x0

    .line 695
    .local v54, "message":Ljava/lang/String;
    const/16 v69, 0x0

    .line 696
    .local v69, "vendorId":Ljava/lang/String;
    const/16 v70, 0x0

    .line 697
    .local v70, "vendorInfo":Ljava/lang/String;
    const/16 v30, 0x0

    .line 698
    .local v30, "expectedParams":[B
    const/16 v33, 0x0

    .line 699
    .local v33, "hostName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 700
    .local v26, "domainName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 701
    .local v6, "ipSrc":Ljava/net/Inet4Address;
    const/16 v39, 0x0

    .line 702
    .local v39, "ipDst":Ljava/net/Inet4Address;
    const/16 v21, 0x0

    .line 703
    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v61, 0x0

    .line 709
    .local v61, "requestedIp":Ljava/net/Inet4Address;
    const/16 v55, 0x0

    .line 710
    .local v55, "mtu":Ljava/lang/Short;
    const/16 v53, 0x0

    .line 711
    .local v53, "maxMessageSize":Ljava/lang/Short;
    const/16 v52, 0x0

    .line 712
    .local v52, "leaseTime":Ljava/lang/Integer;
    const/16 v18, 0x0

    .line 713
    .local v18, "T1":Ljava/lang/Integer;
    const/16 v19, 0x0

    .line 716
    .local v19, "T2":Ljava/lang/Integer;
    const/16 v24, -0x1

    .line 718
    .local v24, "dhcpType":B
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 721
    if-nez p1, :cond_1

    .line 722
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0x116

    if-ge v10, v11, :cond_0

    .line 723
    const/4 v10, 0x0

    return-object v10

    .line 726
    :cond_0
    const/4 v10, 0x6

    new-array v0, v10, [B

    move-object/from16 v49, v0

    .line 727
    .local v49, "l2dst":[B
    const/4 v10, 0x6

    new-array v0, v10, [B

    move-object/from16 v50, v0

    .line 729
    .local v50, "l2src":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 730
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 732
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v51

    .line 734
    .local v51, "l2type":S
    sget v10, Landroid/system/OsConstants;->ETH_P_IP:I

    move/from16 v0, v51

    if-eq v0, v10, :cond_1

    .line 735
    const/4 v10, 0x0

    return-object v10

    .line 738
    .end local v49    # "l2dst":[B
    .end local v50    # "l2src":[B
    .end local v51    # "l2type":S
    :cond_1
    const/4 v10, 0x1

    move/from16 v0, p1

    if-gt v0, v10, :cond_6

    .line 739
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0x108

    if-ge v10, v11, :cond_2

    .line 740
    const/4 v10, 0x0

    return-object v10

    .line 743
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v46

    .line 744
    .local v46, "ipTypeAndLength":B
    move/from16 v0, v46

    and-int/lit16 v10, v0, 0xf0

    shr-int/lit8 v47, v10, 0x4

    .line 745
    .local v47, "ipVersion":I
    const/4 v10, 0x4

    move/from16 v0, v47

    if-eq v0, v10, :cond_3

    .line 746
    const/4 v10, 0x0

    return-object v10

    .line 750
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v38

    .line 751
    .local v38, "ipDiffServicesField":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v45

    .line 752
    .local v45, "ipTotalLength":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v42

    .line 753
    .local v42, "ipIdentification":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v40

    .line 754
    .local v40, "ipFlags":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v41

    .line 755
    .local v41, "ipFragOffset":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v44

    .line 756
    .local v44, "ipTTL":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v43

    .line 757
    .local v43, "ipProto":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v37

    .line 759
    .local v37, "ipChksm":S
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 760
    .local v6, "ipSrc":Ljava/net/Inet4Address;
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v39

    .line 762
    .local v39, "ipDst":Ljava/net/Inet4Address;
    const/16 v10, 0x11

    move/from16 v0, v43

    if-eq v0, v10, :cond_4

    .line 763
    const/4 v10, 0x0

    return-object v10

    .line 768
    :cond_4
    and-int/lit8 v10, v46, 0xf

    add-int/lit8 v60, v10, -0x5

    .line 769
    .local v60, "optionWords":I
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v60

    if-ge v0, v1, :cond_5

    .line 770
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 769
    add-int/lit8 v35, v35, 0x1

    goto :goto_0

    .line 774
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v68

    .line 775
    .local v68, "udpSrcPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v66

    .line 776
    .local v66, "udpDstPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v67

    .line 777
    .local v67, "udpLen":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v65

    .line 779
    .local v65, "udpChkSum":S
    const/16 v10, 0x43

    move/from16 v0, v68

    if-eq v0, v10, :cond_6

    const/16 v10, 0x44

    move/from16 v0, v68

    if-eq v0, v10, :cond_6

    .line 780
    const/4 v10, 0x0

    return-object v10

    .line 784
    .end local v6    # "ipSrc":Ljava/net/Inet4Address;
    .end local v35    # "i":I
    .end local v37    # "ipChksm":S
    .end local v38    # "ipDiffServicesField":B
    .end local v39    # "ipDst":Ljava/net/Inet4Address;
    .end local v40    # "ipFlags":B
    .end local v41    # "ipFragOffset":B
    .end local v42    # "ipIdentification":S
    .end local v43    # "ipProto":B
    .end local v44    # "ipTTL":B
    .end local v45    # "ipTotalLength":S
    .end local v46    # "ipTypeAndLength":B
    .end local v47    # "ipVersion":I
    .end local v60    # "optionWords":I
    .end local v65    # "udpChkSum":S
    .end local v66    # "udpDstPort":S
    .end local v67    # "udpLen":S
    .end local v68    # "udpSrcPort":S
    :cond_6
    const/4 v10, 0x2

    move/from16 v0, p1

    if-gt v0, v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0xec

    if-ge v10, v11, :cond_8

    .line 785
    :cond_7
    const/4 v10, 0x0

    return-object v10

    .line 788
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v64

    .line 789
    .local v64, "type":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v34

    .line 790
    .local v34, "hwType":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v0, v10, 0xff

    move/from16 v20, v0

    .line 791
    .local v20, "addrLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v32

    .line 792
    .local v32, "hops":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 793
    .local v3, "transactionId":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 794
    .local v4, "secs":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v22

    .line 795
    .local v22, "bootpFlags":S
    const v10, 0x8000

    and-int v10, v10, v22

    if-eqz v10, :cond_a

    const/4 v5, 0x1

    .line 796
    .local v5, "broadcast":Z
    :goto_1
    const/4 v10, 0x4

    new-array v0, v10, [B

    move-object/from16 v48, v0

    .line 799
    .local v48, "ipv4addr":[B
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 800
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    check-cast v7, Ljava/net/Inet4Address;

    .line 801
    .local v7, "clientIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 802
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    check-cast v8, Ljava/net/Inet4Address;

    .line 803
    .local v8, "yourIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 804
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    check-cast v15, Ljava/net/Inet4Address;

    .line 805
    .local v15, "nextIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 806
    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    check-cast v16, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    .local v16, "relayIp":Ljava/net/Inet4Address;
    const/16 v10, 0x10

    move/from16 v0, v20

    if-le v0, v10, :cond_9

    .line 818
    sget-object v10, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    array-length v0, v10

    move/from16 v20, v0

    .line 821
    :cond_9
    move/from16 v0, v20

    new-array v9, v0, [B

    .line 822
    .local v9, "clientMac":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 825
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    rsub-int/lit8 v11, v20, 0x10

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x40

    add-int/lit16 v10, v10, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 829
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    .line 831
    .local v23, "dhcpMagicCookie":I
    const v10, 0x63825363

    move/from16 v0, v23

    if-eq v0, v10, :cond_b

    .line 832
    const/4 v10, 0x0

    return-object v10

    .line 795
    .end local v5    # "broadcast":Z
    .end local v7    # "clientIp":Ljava/net/Inet4Address;
    .end local v8    # "yourIp":Ljava/net/Inet4Address;
    .end local v9    # "clientMac":[B
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .end local v16    # "relayIp":Ljava/net/Inet4Address;
    .end local v23    # "dhcpMagicCookie":I
    .end local v48    # "ipv4addr":[B
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "broadcast":Z
    goto :goto_1

    .line 807
    .restart local v48    # "ipv4addr":[B
    :catch_0
    move-exception v28

    .line 808
    .local v28, "ex":Ljava/net/UnknownHostException;
    const/4 v10, 0x0

    return-object v10

    .line 835
    .end local v28    # "ex":Ljava/net/UnknownHostException;
    .restart local v7    # "clientIp":Ljava/net/Inet4Address;
    .restart local v8    # "yourIp":Ljava/net/Inet4Address;
    .restart local v9    # "clientMac":[B
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v16    # "relayIp":Ljava/net/Inet4Address;
    .restart local v23    # "dhcpMagicCookie":I
    :cond_b
    const/16 v57, 0x1

    .line 837
    .end local v18    # "T1":Ljava/lang/Integer;
    .end local v19    # "T2":Ljava/lang/Integer;
    .end local v21    # "bcAddr":Ljava/net/Inet4Address;
    .end local v24    # "dhcpType":B
    .end local v26    # "domainName":Ljava/lang/String;
    .end local v30    # "expectedParams":[B
    .end local v31    # "gateway":Ljava/net/Inet4Address;
    .end local v33    # "hostName":Ljava/lang/String;
    .end local v52    # "leaseTime":Ljava/lang/Integer;
    .end local v53    # "maxMessageSize":Ljava/lang/Short;
    .end local v54    # "message":Ljava/lang/String;
    .end local v55    # "mtu":Ljava/lang/Short;
    .end local v56    # "netMask":Ljava/net/Inet4Address;
    .end local v61    # "requestedIp":Ljava/net/Inet4Address;
    .end local v62    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v69    # "vendorId":Ljava/lang/String;
    .end local v70    # "vendorInfo":Ljava/lang/String;
    .local v57, "notFinishedOptions":Z
    :cond_c
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    if-ge v10, v11, :cond_f

    if-eqz v57, :cond_f

    .line 839
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v59

    .line 841
    .local v59, "optionType":B
    const/4 v10, -0x1

    move/from16 v0, v59

    if-ne v0, v10, :cond_d

    .line 842
    const/16 v57, 0x0

    goto :goto_2

    .line 843
    :cond_d
    if-eqz v59, :cond_c

    .line 846
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v0, v10, 0xff

    move/from16 v58, v0

    .line 847
    .local v58, "optionLen":I
    const/16 v29, 0x0

    .line 849
    .local v29, "expectedLen":I
    sparse-switch v59, :sswitch_data_0

    .line 933
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_3
    move/from16 v0, v35

    move/from16 v1, v58

    if-ge v0, v1, :cond_e

    .line 934
    add-int/lit8 v29, v29, 0x1

    .line 935
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v63

    .line 933
    .local v63, "throwaway":B
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 851
    .end local v35    # "i":I
    .end local v63    # "throwaway":B
    :sswitch_0
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v56

    .line 852
    .local v56, "netMask":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    .line 939
    .end local v56    # "netMask":Ljava/net/Inet4Address;
    :cond_e
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v58

    if-eq v0, v1, :cond_c

    .line 940
    const/4 v10, 0x0

    return-object v10

    .line 855
    :sswitch_1
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v31

    .line 856
    .local v31, "gateway":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    .line 857
    goto :goto_4

    .line 859
    .end local v31    # "gateway":Ljava/net/Inet4Address;
    :sswitch_2
    const/16 v29, 0x0

    :goto_5
    move/from16 v0, v29

    move/from16 v1, v58

    if-ge v0, v1, :cond_e

    .line 860
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    add-int/lit8 v29, v29, 0x4

    goto :goto_5

    .line 864
    :sswitch_3
    move/from16 v29, v58

    .line 865
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v33

    .local v33, "hostName":Ljava/lang/String;
    goto :goto_4

    .line 868
    .end local v33    # "hostName":Ljava/lang/String;
    :sswitch_4
    const/16 v29, 0x2

    .line 869
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v55

    .local v55, "mtu":Ljava/lang/Short;
    goto :goto_4

    .line 872
    .end local v55    # "mtu":Ljava/lang/Short;
    :sswitch_5
    move/from16 v29, v58

    .line 873
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v26

    .local v26, "domainName":Ljava/lang/String;
    goto :goto_4

    .line 876
    .end local v26    # "domainName":Ljava/lang/String;
    :sswitch_6
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v21

    .line 877
    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    .line 878
    goto :goto_4

    .line 880
    .end local v21    # "bcAddr":Ljava/net/Inet4Address;
    :sswitch_7
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v61

    .line 881
    .local v61, "requestedIp":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    .line 882
    goto :goto_4

    .line 884
    .end local v61    # "requestedIp":Ljava/net/Inet4Address;
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 885
    .local v52, "leaseTime":Ljava/lang/Integer;
    const/16 v29, 0x4

    .line 886
    goto :goto_4

    .line 888
    .end local v52    # "leaseTime":Ljava/lang/Integer;
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v24

    .line 889
    .local v24, "dhcpType":B
    const/16 v29, 0x1

    .line 890
    goto :goto_4

    .line 892
    .end local v24    # "dhcpType":B
    :sswitch_a
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v62

    .line 893
    .local v62, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v29, 0x4

    .line 894
    goto :goto_4

    .line 896
    .end local v62    # "serverIdentifier":Ljava/net/Inet4Address;
    :sswitch_b
    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 897
    .local v30, "expectedParams":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 898
    move/from16 v29, v58

    .line 899
    goto :goto_4

    .line 901
    .end local v30    # "expectedParams":[B
    :sswitch_c
    move/from16 v29, v58

    .line 902
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v54

    .local v54, "message":Ljava/lang/String;
    goto/16 :goto_4

    .line 905
    .end local v54    # "message":Ljava/lang/String;
    :sswitch_d
    const/16 v29, 0x2

    .line 906
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v53

    .local v53, "maxMessageSize":Ljava/lang/Short;
    goto/16 :goto_4

    .line 909
    .end local v53    # "maxMessageSize":Ljava/lang/Short;
    :sswitch_e
    const/16 v29, 0x4

    .line 910
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .local v18, "T1":Ljava/lang/Integer;
    goto/16 :goto_4

    .line 913
    .end local v18    # "T1":Ljava/lang/Integer;
    :sswitch_f
    const/16 v29, 0x4

    .line 914
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .local v19, "T2":Ljava/lang/Integer;
    goto/16 :goto_4

    .line 917
    .end local v19    # "T2":Ljava/lang/Integer;
    :sswitch_10
    move/from16 v29, v58

    .line 919
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v69

    .local v69, "vendorId":Ljava/lang/String;
    goto/16 :goto_4

    .line 922
    .end local v69    # "vendorId":Ljava/lang/String;
    :sswitch_11
    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v36, v0

    .line 923
    .local v36, "id":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 924
    move/from16 v29, v58

    goto/16 :goto_4

    .line 927
    .end local v36    # "id":[B
    :sswitch_12
    move/from16 v29, v58

    .line 929
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v70

    .local v70, "vendorInfo":Ljava/lang/String;
    goto/16 :goto_4

    .line 943
    .end local v29    # "expectedLen":I
    .end local v58    # "optionLen":I
    .end local v59    # "optionType":B
    .end local v70    # "vendorInfo":Ljava/lang/String;
    :catch_1
    move-exception v27

    .line 944
    .local v27, "e":Ljava/nio/BufferUnderflowException;
    const/4 v10, 0x0

    return-object v10

    .line 950
    .end local v27    # "e":Ljava/nio/BufferUnderflowException;
    :cond_f
    packed-switch v24, :pswitch_data_0

    .line 984
    :pswitch_0
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unimplemented type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    const/4 v10, 0x0

    return-object v10

    .line 951
    :pswitch_1
    const/4 v10, 0x0

    return-object v10

    .line 953
    :pswitch_2
    new-instance v2, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v2, v3, v4, v9, v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .line 988
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .local v2, "newPacket":Landroid/net/dhcp/DhcpPacket;
    :goto_6
    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 989
    move-object/from16 v0, v25

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 990
    move-object/from16 v0, v26

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 991
    move-object/from16 v0, v31

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    .line 992
    move-object/from16 v0, v33

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 993
    move-object/from16 v0, v52

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 994
    move-object/from16 v0, v54

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 995
    move-object/from16 v0, v55

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    .line 996
    move-object/from16 v0, v61

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 997
    move-object/from16 v0, v30

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 998
    move-object/from16 v0, v62

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 999
    move-object/from16 v0, v56

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1000
    move-object/from16 v0, v53

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    .line 1001
    move-object/from16 v0, v18

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT1:Ljava/lang/Integer;

    .line 1002
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT2:Ljava/lang/Integer;

    .line 1003
    move-object/from16 v0, v69

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorId:Ljava/lang/String;

    .line 1004
    move-object/from16 v0, v70

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    .line 1005
    return-object v2

    .line 957
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_3
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 959
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .line 961
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_4
    new-instance v2, Landroid/net/dhcp/DhcpRequestPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v9

    move v15, v5

    invoke-direct/range {v10 .. v15}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 963
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .line 965
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_5
    new-instance v2, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 968
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .line 970
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_6
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 972
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .line 974
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_7
    new-instance v2, Landroid/net/dhcp/DhcpNakPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 977
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_6

    .line 979
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_8
    new-instance v2, Landroid/net/dhcp/DhcpInformPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 982
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto/16 :goto_6

    .line 849
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0xc -> :sswitch_3
        0xf -> :sswitch_5
        0x1a -> :sswitch_4
        0x1c -> :sswitch_6
        0x2b -> :sswitch_12
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x35 -> :sswitch_9
        0x36 -> :sswitch_a
        0x37 -> :sswitch_b
        0x38 -> :sswitch_c
        0x39 -> :sswitch_d
        0x3a -> :sswitch_e
        0x3b -> :sswitch_f
        0x3c -> :sswitch_10
        0x3d -> :sswitch_11
    .end sparse-switch

    .line 950
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;
    .locals 3
    .param p0, "packet"    # [B
    .param p1, "length"    # I
    .param p2, "pktType"    # I

    .prologue
    .line 1013
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1014
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, p2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    move-result-object v1

    return-object v1
.end method

.method private static intAbs(S)I
    .locals 1
    .param p0, "v"    # S

    .prologue
    .line 451
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static macToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "mac"    # [B

    .prologue
    .line 607
    const-string/jumbo v2, ""

    .line 609
    .local v2, "macAddr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "hexString":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "byteCount"    # I
    .param p2, "nullOk"    # Z

    .prologue
    const/4 v4, 0x0

    .line 654
    new-array v0, p1, [B

    .line 655
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 656
    array-length v1, v0

    .line 657
    .local v1, "length":I
    if-nez p2, :cond_0

    .line 662
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 663
    aget-byte v2, v0, v1

    if-nez v2, :cond_1

    .line 668
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    .line 662
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .locals 4
    .param p0, "packet"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 635
    const/4 v2, 0x0

    .line 636
    .local v2, "result":Ljava/net/Inet4Address;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 637
    .local v1, "ipAddr":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 640
    :try_start_0
    invoke-static {v1}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .end local v2    # "result":Ljava/net/Inet4Address;
    check-cast v2, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-object v2

    .line 641
    :catch_0
    move-exception v0

    .line 644
    .local v0, "ex":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    .restart local v2    # "result":Ljava/net/Inet4Address;
    goto :goto_0
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 598
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android-dhcp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 600
    const-string/jumbo v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 597
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .locals 15
    .param p1, "encap"    # I
    .param p2, "destIp"    # Ljava/net/Inet4Address;
    .param p3, "srcIp"    # Ljava/net/Inet4Address;
    .param p4, "destUdp"    # S
    .param p5, "srcUdp"    # S
    .param p6, "buf"    # Ljava/nio/ByteBuffer;
    .param p7, "requestCode"    # B
    .param p8, "broadcast"    # Z

    .prologue
    .line 334
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v2

    .line 335
    .local v2, "destIpArray":[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v7

    .line 336
    .local v7, "srcIpArray":[B
    const/4 v5, 0x0

    .line 337
    .local v5, "ipHeaderOffset":I
    const/4 v6, 0x0

    .line 338
    .local v6, "ipLengthOffset":I
    const/4 v4, 0x0

    .line 339
    .local v4, "ipChecksumOffset":I
    const/4 v3, 0x0

    .line 340
    .local v3, "endIpHeader":I
    const/4 v9, 0x0

    .line 341
    .local v9, "udpHeaderOffset":I
    const/4 v11, 0x0

    .line 342
    .local v11, "udpLengthOffset":I
    const/4 v8, 0x0

    .line 344
    .local v8, "udpChecksumOffset":I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 345
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 347
    if-nez p1, :cond_0

    .line 348
    sget-object v13, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 349
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 350
    sget v13, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 356
    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p1

    if-gt v0, v13, :cond_1

    .line 357
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 358
    const/16 v13, 0x45

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 359
    const/16 v13, 0x10

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 360
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 361
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 362
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 363
    const/16 v13, 0x4000

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 364
    const/16 v13, 0x40

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 365
    const/16 v13, 0x11

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 366
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 367
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 369
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 370
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 371
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 374
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 375
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 376
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 377
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 378
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 379
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 380
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 384
    :cond_1
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 385
    const/4 v13, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 386
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v13, v13

    int-to-byte v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 387
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 388
    iget v13, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 389
    iget-short v13, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 391
    if-eqz p8, :cond_4

    .line 392
    const/16 v13, -0x8000

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 397
    :goto_0
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 398
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 399
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 400
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 401
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 403
    iget-object v14, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v14, v14

    rsub-int/lit8 v14, v14, 0x10

    .line 402
    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x40

    add-int/lit16 v13, v13, 0x80

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 406
    const v13, 0x63825363

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 407
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 410
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 411
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 416
    :cond_2
    const/4 v13, 0x1

    move/from16 v0, p1

    if-gt v0, v13, :cond_3

    .line 418
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v9

    int-to-short v10, v13

    .line 419
    .local v10, "udpLen":S
    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v10}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 426
    add-int/lit8 v13, v4, 0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/lit8 v12, v13, 0x0

    .line 427
    .local v12, "udpSeed":I
    add-int/lit8 v13, v4, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 428
    add-int/lit8 v13, v4, 0x6

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 429
    add-int/lit8 v13, v4, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 432
    add-int/lit8 v12, v12, 0x11

    .line 433
    add-int/2addr v12, v10

    .line 437
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 435
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v12, v9, v13}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v13

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v8, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 439
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v5

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 442
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v13, v5, v3}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v13

    int-to-short v13, v13

    .line 441
    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 333
    .end local v10    # "udpLen":S
    .end local v12    # "udpSeed":I
    :cond_3
    return-void

    .line 394
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 321
    .local v0, "clientId":[B
    aput-byte v4, v0, v3

    .line 322
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 323
    return-object v0
.end method

.method public getClientMac()[B
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .locals 4

    .prologue
    .line 1061
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1062
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1063
    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_2

    .line 1064
    const-wide/32 v0, 0xea60

    return-wide v0

    .line 1066
    :cond_2
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1021
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 1022
    .local v1, "ipAddress":Ljava/net/Inet4Address;
    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1023
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 1024
    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1025
    return-object v5

    .line 1030
    :cond_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    .line 1032
    :try_start_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {v4}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1041
    .local v2, "prefixLength":I
    :goto_0
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    .line 1043
    .local v3, "results":Landroid/net/DhcpResults;
    :try_start_1
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1047
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    iput-object v4, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    .line 1048
    iget-object v4, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1049
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    .line 1050
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    iput-object v4, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .line 1051
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 1052
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    iput v4, v3, Landroid/net/DhcpResults;->leaseDuration:I

    .line 1053
    return-object v3

    .line 1033
    .end local v2    # "prefixLength":I
    .end local v3    # "results":Landroid/net/DhcpResults;
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v5

    .line 1038
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-static {v1}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v2

    .restart local v2    # "prefixLength":I
    goto :goto_0

    .line 1044
    .restart local v3    # "results":Landroid/net/DhcpResults;
    :catch_1
    move-exception v0

    .line 1045
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    return-object v5

    .line 1052
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 625
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "macAddr":Ljava/lang/String;
    return-object v0
.end method
