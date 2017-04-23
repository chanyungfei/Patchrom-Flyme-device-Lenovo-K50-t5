.class public Lcom/android/internal/telephony/dataconnection/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public active:I

.field public addresses:[Ljava/lang/String;

.field public cid:I

.field public dnses:[Ljava/lang/String;

.field public gateways:[Ljava/lang/String;

.field public ifname:Ljava/lang/String;

.field public mtu:I

.field public pcscf:[Ljava/lang/String;

.field public status:I

.field public suggestedRetryTime:I

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->DBG:Z

    .line 49
    const-string/jumbo v0, "DataCallResponse"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->LOG_TAG:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 57
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 58
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 59
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    .line 65
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method private decIpToHex(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 13
    .param p1, "ipAddr"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 298
    const-string/jumbo v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "ipElements":[Ljava/lang/String;
    array-length v7, v5

    const/16 v8, 0x10

    if-ne v7, v8, :cond_2

    .line 300
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v5

    if-ge v4, v7, :cond_1

    .line 302
    aget-object v7, v5, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, "a1":I
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "%02x"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "hex1":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 305
    .local v1, "a2":I
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "%02x"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "hex2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    add-int/lit8 v7, v4, 0x2

    array-length v8, v5

    if-eq v7, v8, :cond_0

    .line 308
    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 311
    .end local v0    # "a1":I
    .end local v1    # "a2":I
    .end local v2    # "hex1":Ljava/lang/String;
    .end local v3    # "hex2":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 313
    .end local v4    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    const-string/jumbo v7, "DataCallResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 21
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .param p2, "okToUseSystemPropertyDns"    # Z

    .prologue
    .line 139
    if-nez p1, :cond_1

    .line 140
    new-instance p1, Landroid/net/LinkProperties;

    .end local p1    # "linkProperties":Landroid/net/LinkProperties;
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    .line 144
    .restart local p1    # "linkProperties":Landroid/net/LinkProperties;
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v16, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 145
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "net."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, "propertyPrefix":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_7

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    aget-object v2, v16, v15

    .line 154
    .local v2, "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_2

    .line 153
    :cond_0
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 142
    .end local v2    # "addr":Ljava/lang/String;
    .end local v12    # "propertyPrefix":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    goto :goto_0

    .line 159
    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v12    # "propertyPrefix":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "ap":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 161
    const/16 v18, 0x0

    aget-object v2, v4, v18

    .line 162
    const/16 v18, 0x1

    aget-object v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 168
    .local v3, "addrPrefixLen":I
    :goto_3
    :try_start_2
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 172
    .local v10, "ia":Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v18

    if-nez v18, :cond_0

    .line 173
    if-nez v3, :cond_3

    .line 175
    instance-of v0, v10, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const/16 v3, 0x20

    .line 177
    :cond_3
    :goto_4
    const-string/jumbo v18, "DataCallResponse"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "addr/pl="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v10, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 179
    .local v11, "la":Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 272
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v10    # "ia":Ljava/net/InetAddress;
    .end local v11    # "la":Landroid/net/LinkAddress;
    :catch_0
    move-exception v9

    .line 273
    .local v9, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v15, "DataCallResponse"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setLinkProperties: UnknownHostException "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v9}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 275
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 286
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .end local v12    # "propertyPrefix":Ljava/lang/String;
    .local v13, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :goto_5
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    if-eq v13, v15, :cond_4

    .line 288
    const-string/jumbo v15, "DataCallResponse"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setLinkProperties: error clearing LinkProperties status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    move/from16 v17, v0

    .line 288
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 289
    const-string/jumbo v17, " result="

    .line 288
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    .line 294
    :cond_4
    return-object v13

    .line 164
    .end local v13    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v4    # "ap":[Ljava/lang/String;
    .restart local v12    # "propertyPrefix":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "addrPrefixLen":I
    goto/16 :goto_3

    .line 169
    :catch_1
    move-exception v8

    .line 170
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Non-numeric ip addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 175
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "ia":Ljava/net/InetAddress;
    :cond_6
    const/16 v3, 0x80

    goto/16 :goto_4

    .line 183
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v10    # "ia":Ljava/net/InetAddress;
    :cond_7
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "no address for ifname="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_b

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_6
    move/from16 v0, v17

    if-ge v15, v0, :cond_f

    aget-object v2, v16, v15

    .line 189
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v18

    if-eqz v18, :cond_a

    .line 188
    :cond_9
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 193
    :cond_a
    :try_start_5
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v10

    .line 197
    .restart local v10    # "ia":Ljava/net/InetAddress;
    :try_start_6
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v18

    if-nez v18, :cond_9

    .line 198
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_7

    .line 194
    .end local v10    # "ia":Ljava/net/InetAddress;
    :catch_2
    move-exception v8

    .line 195
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Non-numeric dns addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 201
    .end local v2    # "addr":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    if-eqz p2, :cond_e

    .line 202
    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/String;

    .line 203
    .local v6, "dnsServers":[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "dns1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v6, v16

    .line 204
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "dns2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v6, v16

    .line 205
    const/4 v15, 0x0

    array-length v0, v6

    move/from16 v16, v0

    :goto_8
    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    aget-object v5, v6, v15

    .line 206
    .local v5, "dnsAddr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v17

    if-eqz v17, :cond_d

    .line 205
    :cond_c
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 210
    :cond_d
    :try_start_7
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v10

    .line 214
    .restart local v10    # "ia":Ljava/net/InetAddress;
    :try_start_8
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_c

    .line 215
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_9

    .line 211
    .end local v10    # "ia":Ljava/net/InetAddress;
    :catch_3
    move-exception v8

    .line 212
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Non-numeric dns addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 219
    .end local v5    # "dnsAddr":Ljava/lang/String;
    .end local v6    # "dnsServers":[Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    new-instance v15, Ljava/net/UnknownHostException;

    const-string/jumbo v16, "Empty dns response and no system default dns"

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 223
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v15, v15

    if-nez v15, :cond_11

    .line 224
    :cond_10
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "gw"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 225
    .local v14, "sysGateways":Ljava/lang/String;
    if-eqz v14, :cond_12

    .line 226
    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 231
    .end local v14    # "sysGateways":Ljava/lang/String;
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_b
    move/from16 v0, v17

    if-ge v15, v0, :cond_14

    aget-object v2, v16, v15

    .line 232
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 231
    :goto_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 228
    .end local v2    # "addr":Ljava/lang/String;
    .restart local v14    # "sysGateways":Ljava/lang/String;
    :cond_12
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_a

    .line 236
    .end local v14    # "sysGateways":Ljava/lang/String;
    .restart local v2    # "addr":Ljava/lang/String;
    :cond_13
    :try_start_9
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v10

    .line 241
    .restart local v10    # "ia":Ljava/net/InetAddress;
    :try_start_a
    new-instance v18, Landroid/net/RouteInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_c

    .line 237
    .end local v10    # "ia":Ljava/net/InetAddress;
    :catch_4
    move-exception v8

    .line 238
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Non-numeric gateway addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 245
    .end local v2    # "addr":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_14
    const-string/jumbo v15, "ro.mtk_epdg_support"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_16

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_d
    move/from16 v0, v17

    if-ge v15, v0, :cond_16

    aget-object v2, v16, v15

    .line 248
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0

    move-result v18

    if-eqz v18, :cond_15

    .line 247
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 254
    :cond_15
    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->decIpToHex(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v18

    .line 253
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_e

    .line 255
    :catch_5
    move-exception v7

    .line 256
    .local v7, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 265
    .end local v2    # "addr":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    if-nez v15, :cond_17

    .line 266
    const-string/jumbo v15, "DataCallResponse"

    const-string/jumbo v16, "mtu from response is 0, set default"

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_17
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 271
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_0

    .restart local v13    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    .line 278
    .end local v12    # "propertyPrefix":Ljava/lang/String;
    .end local v13    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_18
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_19

    .line 279
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v13    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    .line 281
    .end local v13    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_19
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v13    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "DataCallResponse: {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 94
    const-string/jumbo v4, "version="

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 94
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 95
    const-string/jumbo v4, " status="

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 95
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 96
    const-string/jumbo v4, " retry="

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 96
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 97
    const-string/jumbo v4, " cid="

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 97
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 98
    const-string/jumbo v4, " active="

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 98
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 99
    const-string/jumbo v4, " type="

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 99
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 100
    const-string/jumbo v4, " ifname="

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 100
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 101
    const-string/jumbo v4, " mtu="

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 101
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 102
    const-string/jumbo v4, " addresses=["

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 104
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 108
    :cond_1
    const-string/jumbo v3, "] dnses=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 110
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 114
    :cond_3
    const-string/jumbo v3, "] gateways=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 116
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 119
    .end local v0    # "addr":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 122
    :cond_5
    const-string/jumbo v3, "] pcscf=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_6

    aget-object v0, v3, v2

    .line 124
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 127
    .end local v0    # "addr":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 129
    :cond_7
    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
