.class public Landroid/provider/MultiSIMUtils;
.super Ljava/lang/Object;
.source "MultiSIMUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSIMUtils"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Landroid/provider/MultiSIMUtils;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sput-object p1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/provider/MultiSIMUtils;

    invoke-direct {v0, p0}, Landroid/provider/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    .line 29
    :cond_0
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    return-object v0
.end method

.method private getSubIdBySlot(I)I
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 44
    .local v0, "subId":[I
    const-string/jumbo v2, "MultiSIMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubIdBySlot, simId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " subId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    aget v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v0, :cond_1

    aget v1, v0, v4

    :goto_1
    return v1

    .line 44
    :cond_0
    const-string/jumbo v1, "invalid!"

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    goto :goto_1
.end method

.method private handleCustomSnDisplay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    const-string/jumbo v1, "sys.customsn.showcode"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "customSn":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "str":Landroid/telephony/CellLocation;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 111
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 114
    .end local v1    # "str":Landroid/telephony/CellLocation;
    :cond_0
    const-string/jumbo v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCellLocation is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v1
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "IMEIorMEID":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 52
    .local v1, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .end local v0    # "IMEIorMEID":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDeviceId meid or imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", simid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object v0
.end method

.method public getDevicePn()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x17

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "strPN":Ljava/lang/String;
    const-string/jumbo v1, "gsm.serial"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "strPN":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    return-object v0
.end method

.method public getDeviceSn()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "strSN":Ljava/lang/String;
    const-string/jumbo v2, "gsm.serial"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "strSN":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 189
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_0
    invoke-direct {p0}, Landroid/provider/MultiSIMUtils;->handleCustomSnDisplay()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "customSn":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    move-object v1, v0

    .line 196
    :cond_1
    return-object v1
.end method

.method public getIMEI(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "str":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 172
    const-string/jumbo v1, "gsm.ril.imei1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 173
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 174
    const-string/jumbo v1, "gsm.ril.imei2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public getMEID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "gsm.ril.c2k.meid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 77
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNetworkOperator is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v1
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getPhoneType(I)I
    .locals 4
    .param p1, "simid"    # I

    .prologue
    .line 162
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 163
    .local v0, "phoneType":I
    const-string/jumbo v1, "MultiSIMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPhoneType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 9
    .param p1, "simid"    # I

    .prologue
    const/4 v7, 0x0

    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, "scaBundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 123
    .local v4, "scaString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 124
    .local v2, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 126
    .local v5, "subId":[I
    const-string/jumbo v6, "phoneEx"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 127
    .local v2, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 129
    const/4 v6, 0x0

    :try_start_0
    aget v6, v5, v6

    invoke-interface {v2, v6}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getScAddressUsingSubId(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 139
    .end local v3    # "scaBundle":Landroid/os/Bundle;
    :cond_0
    if-eqz v3, :cond_1

    .line 140
    const-string/jumbo v6, "MultiSIMUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scaBundle["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string/jumbo v6, "scAddress"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "scaString":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 143
    :cond_1
    return-object v4

    .line 133
    .restart local v3    # "scaBundle":Landroid/os/Bundle;
    .restart local v4    # "scaString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 135
    return-object v7

    .line 130
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 132
    return-object v7
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 88
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimOperator is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 99
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimSerialNumber is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v1
.end method

.method public getSimState(I)I
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "state":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 152
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 155
    :cond_0
    const-string/jumbo v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 65
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSubscriberId is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v1
.end method
