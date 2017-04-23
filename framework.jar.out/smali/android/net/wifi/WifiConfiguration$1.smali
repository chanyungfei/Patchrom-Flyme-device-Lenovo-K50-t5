.class final Landroid/net/wifi/WifiConfiguration$1;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
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
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1823
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1824
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1825
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1826
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1827
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1828
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 1831
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    .line 1832
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 1833
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 1834
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1835
    .local v2, "numRoamingConsortiumIds":I
    new-array v3, v2, [J

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 1836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1837
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    aput-wide v6, v3, v1

    .line 1836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1839
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1840
    const/4 v1, 0x0

    :goto_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1841
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 1840
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1843
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 1847
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    .line 1849
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1850
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 1851
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 1852
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1853
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 1855
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1857
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/IpConfiguration;

    invoke-static {v0, v3}, Landroid/net/wifi/WifiConfiguration;->-set0(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;

    .line 1858
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    .line 1859
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 1861
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_4
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 1862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_5
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 1863
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_6
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 1864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_7
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 1867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 1868
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 1869
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 1870
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    .line 1871
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    .line 1872
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    .line 1873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    .line 1874
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 1876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 1877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 1878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 1879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 1880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 1881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 1882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 1883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 1884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 1885
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 1886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 1887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    .line 1888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 1889
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_8
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    .line 1890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 1891
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 1892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    :goto_9
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 1897
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 1899
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    .line 1900
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 1901
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 1902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    .line 1905
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoConnectable:I

    .line 1908
    return-object v0

    :cond_2
    move v3, v5

    .line 1845
    goto/16 :goto_2

    :cond_3
    move v3, v5

    .line 1846
    goto/16 :goto_3

    :cond_4
    move v3, v5

    .line 1861
    goto/16 :goto_4

    :cond_5
    move v3, v5

    .line 1862
    goto/16 :goto_5

    :cond_6
    move v3, v5

    .line 1863
    goto/16 :goto_6

    :cond_7
    move v3, v5

    .line 1864
    goto/16 :goto_7

    :cond_8
    move v3, v5

    .line 1889
    goto :goto_8

    :cond_9
    move v4, v5

    .line 1892
    goto :goto_9
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1822
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1912
    new-array v0, p1, [Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1911
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method
