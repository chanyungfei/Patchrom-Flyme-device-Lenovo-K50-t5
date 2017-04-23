.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final DBG:Z = false

.field static final EVDO_DT_SUPPORT:Ljava/lang/String; = "ril.evdo.dtsupport"

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mBgDataChangeUpdate:Ljava/lang/Runnable;

.field private static mBgDataLastSetting:Z

.field private static mNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

.field private static mProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static mRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sActiveSvlteModeSlotId:I

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static final sLocalLogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockProxyPhones:Ljava/lang/Object;

.field private static sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

.field private static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

.field private static sSvlteUiccController:Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

.field private static sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->mBgDataLastSetting:Z

    return v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/telephony/PhoneFactory;->mBgDataLastSetting:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    .line 85
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 86
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 88
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 105
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    .line 121
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.backgrounddata"

    const-string/jumbo v2, " false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->mBgDataLastSetting:Z

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalLog(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 773
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 774
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 777
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, p1}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 772
    return-void
.end method

.method private static calculateNetworkType(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 431
    const/4 v1, -0x1

    .line 433
    .local v1, "networkMode":I
    const-string/jumbo v2, "persist.radio.simswitch"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 435
    .local v0, "capabilityPhoneId":I
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    const-string/jumbo v2, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calculateNetworkType error, phone id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v1

    .line 440
    :cond_0
    sget v2, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    if-ne v2, p1, :cond_1

    .line 441
    const/4 v1, 0x4

    .line 442
    return v1

    .line 443
    :cond_1
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 444
    if-ne p1, v0, :cond_2

    .line 445
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 449
    :goto_0
    return v1

    .line 447
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 452
    :cond_3
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result p1

    .line 455
    sget v2, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    if-eq v2, p1, :cond_5

    .line 456
    const/4 v1, 0x4

    .line 464
    :cond_4
    :goto_1
    return v1

    .line 457
    :cond_5
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 458
    if-ne p1, v0, :cond_6

    .line 459
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v1

    goto :goto_1

    .line 461
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 638
    const-string/jumbo v2, "preferred_network_mode"

    .line 639
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 637
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 640
    .local v0, "networkType":I
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calculatePreferredNetworkType: networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return v0
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneSubId"    # I

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 652
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 655
    .local v0, "networkType":I
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 656
    const-string/jumbo v3, " networkType = "

    .line 655
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 800
    const-string/jumbo v8, "PhoneFactory:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/telephony/PhoneProxy;

    .line 802
    .local v7, "phones":[Lcom/android/internal/telephony/PhoneProxy;
    const/4 v1, -0x1

    .line 803
    .local v1, "i":I
    const/4 v8, 0x0

    array-length v10, v7

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v6, v7, v9

    .line 805
    .local v6, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    add-int/lit8 v1, v1, 0x1

    .line 808
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 809
    .local v5, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 816
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 823
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 824
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :goto_2
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Telephony DebugService: Could not get Phone["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "] e="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 820
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :catch_1
    move-exception v0

    .line 821
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 828
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 834
    :goto_3
    :try_start_3
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 838
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 839
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 846
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 847
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    :try_start_5
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 854
    :goto_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 856
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v9

    .line 858
    :try_start_6
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v8, "  "

    invoke-direct {v2, p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 859
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 860
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 862
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LocalLog;

    invoke-virtual {v8, p0, v2, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 863
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 857
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 829
    :catch_2
    move-exception v0

    .line 830
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 835
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 836
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 843
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 844
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 851
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 852
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 865
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_7
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v9

    .line 799
    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 553
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v1, :cond_0

    .line 554
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 558
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 566
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 571
    return-object v0

    .line 560
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 557
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 469
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 471
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 480
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    .line 481
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 480
    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 487
    return-object v0

    .line 473
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    .line 474
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 473
    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 469
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDataSubscription()J
    .locals 4

    .prologue
    .line 729
    const/4 v1, -0x1

    .line 732
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 733
    const-string/jumbo v3, "multi_sim_data_call"

    .line 732
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 738
    :goto_0
    int-to-long v2, v1

    return-wide v2

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 499
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v2

    .line 500
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v1, :cond_0

    .line 501
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .local v0, "phoneId":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 503
    .end local v0    # "phoneId":I
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 504
    .restart local v0    # "phoneId":I
    const-string/jumbo v1, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDefaultPhone before revised: phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-ltz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 506
    :cond_1
    const/4 v0, 0x0

    .line 508
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 662
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 575
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 576
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 577
    :cond_0
    const/4 v0, 0x0

    .line 579
    :cond_1
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    return-object v1
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 491
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 492
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    .line 493
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 492
    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 494
    return-object v0

    .line 491
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 515
    const-string/jumbo v0, ""

    .line 517
    .local v0, "dbgInfo":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v3

    .line 518
    :try_start_0
    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v2, :cond_0

    .line 519
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Default phones haven\'t been made yet!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 521
    :cond_0
    const v2, 0x7fffffff

    if-ne p0, v2, :cond_1

    .line 523
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 539
    return-object v1

    .line 526
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result p0

    .line 531
    :cond_2
    if-ltz p0, :cond_3

    .line 532
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge p0, v2, :cond_3

    .line 533
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v2, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    const/4 v1, 0x0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 544
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 548
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getSMSSubscription()I
    .locals 4

    .prologue
    .line 743
    const/4 v1, -0x1

    .line 745
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 746
    const-string/jumbo v3, "multi_sim_sms"

    .line 745
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 751
    :goto_0
    return v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    .prologue
    .line 667
    const/4 v1, -0x1

    .line 670
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 671
    const-string/jumbo v3, "multi_sim_voice_call"

    .line 670
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 676
    :goto_0
    return v1

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim Voice Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;
    .locals 2

    .prologue
    .line 583
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    if-nez v0, :cond_0

    .line 584
    const-string/jumbo v0, "PhoneFactory"

    const-string/jumbo v1, "sWorldPhone is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    return-object v0
.end method

.method public static isEvdoDTSupport()Z
    .locals 2

    .prologue
    .line 870
    const-string/jumbo v0, "ril.evdo.dtsupport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const/4 v0, 0x1

    return v0

    .line 873
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPromptEnabled()Z
    .locals 6

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 684
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 685
    const-string/jumbo v4, "multi_sim_voice_prompt"

    .line 684
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 689
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 690
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return v0

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isSMSPromptEnabled()Z
    .locals 6

    .prologue
    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 708
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 709
    const-string/jumbo v4, "multi_sim_sms_prompt"

    .line 708
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 713
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 714
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SMS Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return v0

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 713
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 791
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 792
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 795
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 790
    return-void
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v20

    .line 136
    :try_start_0
    sget-boolean v19, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v19, :cond_10

    .line 137
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const/16 v17, 0x0

    .line 144
    .local v17, "retryCount":I
    :goto_0
    const/4 v9, 0x0

    .line 145
    .local v9, "hasException":Z
    add-int/lit8 v17, v17, 0x1

    .line 150
    :try_start_1
    new-instance v19, Landroid/net/LocalServerSocket;

    const-string/jumbo v21, "com.android.internal.telephony"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :goto_1
    if-nez v9, :cond_4

    .line 167
    :try_start_2
    new-instance v19, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 170
    sget v16, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 171
    .local v16, "preferredNetworkMode":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 172
    const/16 v16, 0x7

    .line 175
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v5

    .line 176
    .local v5, "cdmaSubscription":I
    const-string/jumbo v19, "PhoneFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Cdma Subscription set to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    .line 182
    .local v12, "numPhones":I
    new-array v11, v12, [I

    .line 183
    .local v11, "networkModes":[I
    new-array v0, v12, [Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v19, v0

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 184
    new-array v0, v12, [Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 187
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 188
    new-array v0, v12, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-object/from16 v19, v0

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 189
    new-array v0, v12, [Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    .line 190
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v19

    sput v19, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    .line 191
    sget v19, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    .line 192
    const/16 v21, -0x1

    .line 191
    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 193
    const/16 v19, 0x0

    .line 191
    :goto_2
    invoke-static/range {v19 .. v19}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setCdmaSocketSlotId(I)V

    .line 198
    :cond_1
    const-string/jumbo v19, "persist.radio.simswitch"

    const-string/jumbo v21, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 197
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 200
    .local v4, "capabilityPhoneId":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v12, :cond_9

    .line 219
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isEvdoDTSupport()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v19

    if-eqz v19, :cond_7

    .line 222
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 223
    const-string/jumbo v21, "preferred_network_mode"

    .line 222
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 221
    aput v19, v11, v10
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    :goto_4
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_2

    .line 231
    const/16 v19, 0x1

    :try_start_4
    aput v19, v11, v10

    .line 233
    :cond_2
    const-string/jumbo v19, "PhoneFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "EVDO Network Mode set to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 234
    aget v22, v11, v10

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 233
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_3
    :goto_5
    const-string/jumbo v19, "PhoneFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "RILJ Sub = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string/jumbo v19, "PhoneFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "capabilityPhoneId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 250
    const-string/jumbo v22, " Network Mode set to "

    .line 249
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 250
    aget v22, v11, v10

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 249
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v21, Lcom/android/internal/telephony/RIL;

    aget v22, v11, v10

    .line 252
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 251
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v21, v19, v10

    .line 200
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 151
    .end local v4    # "capabilityPhoneId":I
    .end local v5    # "cdmaSubscription":I
    .end local v10    # "i":I
    .end local v11    # "networkModes":[I
    .end local v12    # "numPhones":I
    .end local v16    # "preferredNetworkMode":I
    :catch_0
    move-exception v8

    .line 152
    .local v8, "ex":Ljava/io/IOException;
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 157
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_4
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 158
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v21, "PhoneFactory probably already running"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    .end local v9    # "hasException":Z
    .end local v17    # "retryCount":I
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 161
    .restart local v9    # "hasException":Z
    .restart local v17    # "retryCount":I
    :cond_5
    const-wide/16 v22, 0x7d0

    :try_start_5
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 162
    :catch_1
    move-exception v7

    .local v7, "er":Ljava/lang/InterruptedException;
    goto/16 :goto_0

    .line 193
    .end local v7    # "er":Ljava/lang/InterruptedException;
    .restart local v5    # "cdmaSubscription":I
    .restart local v11    # "networkModes":[I
    .restart local v12    # "numPhones":I
    .restart local v16    # "preferredNetworkMode":I
    :cond_6
    :try_start_6
    sget v19, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    goto/16 :goto_2

    .line 224
    .restart local v4    # "capabilityPhoneId":I
    .restart local v10    # "i":I
    :catch_2
    move-exception v18

    .line 225
    .local v18, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v19, "PhoneFactory"

    const-string/jumbo v21, "Settings Exception Reading Value At Index for Settings.Global.PREFERRED_NETWORK_MODE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    aput v16, v11, v10

    goto/16 :goto_4

    .line 236
    .end local v18    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_7
    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_8

    .line 237
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v19

    aput v19, v11, v10

    .line 242
    :goto_6
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 243
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/internal/telephony/PhoneFactory;->calculateNetworkType(Landroid/content/Context;I)I

    move-result v19

    aput v19, v11, v10

    goto/16 :goto_5

    .line 239
    :cond_8
    const/16 v19, 0x1

    aput v19, v11, v10

    goto :goto_6

    .line 254
    :cond_9
    const-string/jumbo v19, "PhoneFactory"

    const-string/jumbo v21, "Creating SubscriptionController"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    .line 259
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v19

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 261
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 262
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->make()Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    move-result-object v19

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sSvlteUiccController:Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    .line 266
    :cond_a
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/mediatek/internal/telephony/RadioManager;->init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v19

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->mRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    .line 268
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/mediatek/internal/telephony/NetworkManager;->init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/NetworkManager;

    move-result-object v19

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->mNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

    .line 270
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v19

    if-nez v19, :cond_d

    .line 272
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v12, :cond_e

    .line 273
    const/4 v14, 0x0

    .line 274
    .local v14, "phone":Lcom/android/internal/telephony/PhoneBase;
    aget v19, v11, v10

    invoke-static/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v15

    .line 276
    .local v15, "phoneType":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_c

    .line 277
    new-instance v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 278
    .end local v14    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v19, v19, v10

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v14, v0, v1, v2, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 279
    .local v14, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->startMonitoringImsService()V

    .line 299
    .end local v14    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_b
    :goto_8
    const-string/jumbo v19, "PhoneFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Creating Phone with type = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " sub = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    new-instance v21, Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v21, v19, v10

    .line 272
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 280
    .local v14, "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_c
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 282
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 291
    new-instance v14, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v14    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v19, v19, v10

    .line 292
    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v14, v0, v1, v2, v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 297
    .local v14, "phone":Lcom/android/internal/telephony/PhoneBase;
    :goto_9
    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->startMonitoringImsService()V

    goto :goto_8

    .line 284
    .local v14, "phone":Lcom/android/internal/telephony/PhoneBase;
    :pswitch_0
    new-instance v14, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v14    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v19, v19, v10

    .line 285
    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v14, v0, v1, v2, v10}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 286
    .local v14, "phone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_9

    .line 304
    .end local v14    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v15    # "phoneType":I
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->svlteInit(Landroid/content/Context;)V

    .line 307
    :cond_e
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 308
    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 307
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;

    move-result-object v19

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->mProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 313
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    const/16 v21, 0x0

    aget-object v19, v19, v21

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 314
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v21, 0x0

    aget-object v19, v19, v21

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 319
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .line 320
    .local v6, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v13, "NONE"

    .line 321
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 322
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 324
    :cond_f
    const-string/jumbo v19, "PhoneFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "defaultSmsApplication: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 329
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 331
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 332
    const-string/jumbo v19, "PhoneFactory"

    const-string/jumbo v21, "Creating SubInfoRecordUpdater "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 334
    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 333
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 335
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 337
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 338
    const-string/jumbo v19, "PhoneFactory"

    const-string/jumbo v21, "World mode support"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->init()V

    .line 347
    :goto_a
    new-instance v19, Lcom/android/internal/telephony/PhoneFactory$1;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneFactory$1;-><init>()V

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->mBgDataChangeUpdate:Ljava/lang/Runnable;

    .line 365
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->mBgDataChangeUpdate:Ljava/lang/Runnable;

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v4    # "capabilityPhoneId":I
    .end local v5    # "cdmaSubscription":I
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "hasException":Z
    .end local v10    # "i":I
    .end local v11    # "networkModes":[I
    .end local v12    # "numPhones":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "preferredNetworkMode":I
    .end local v17    # "retryCount":I
    :cond_10
    monitor-exit v20

    .line 134
    return-void

    .line 340
    .restart local v4    # "capabilityPhoneId":I
    .restart local v5    # "cdmaSubscription":I
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v9    # "hasException":Z
    .restart local v10    # "i":I
    .restart local v11    # "networkModes":[I
    .restart local v12    # "numPhones":I
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v16    # "preferredNetworkMode":I
    .restart local v17    # "retryCount":I
    :cond_11
    :try_start_7
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 341
    const-string/jumbo v19, "PhoneFactory"

    const-string/jumbo v21, "World phone support"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->getWorldPhoneInstance()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v19

    sput-object v19, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    goto :goto_a

    .line 344
    :cond_12
    const-string/jumbo v19, "PhoneFactory"

    const-string/jumbo v21, "World phone not support"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1
    .param p0, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p1, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 759
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    return-object v0
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 596
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultSubscription(I)V
    .locals 6
    .param p0, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 604
    const-string/jumbo v3, "persist.radio.default.sub"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 607
    .local v2, "phoneId":I
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v4

    .line 609
    if-ltz v2, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 610
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 611
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 612
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 617
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "defaultMccMnc":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 622
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 624
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 625
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultSubscription : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 626
    const-string/jumbo v5, " Broadcasting Default Subscription Changed..."

    .line 625
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 603
    return-void

    .line 607
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 697
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 698
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 699
    const-string/jumbo v2, "multi_sim_voice_prompt"

    .line 698
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoicePromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void

    .line 697
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public static setSMSPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 721
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 722
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 723
    const-string/jumbo v2, "multi_sim_sms_prompt"

    .line 722
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 724
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSMSPromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 721
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private static svlteInit(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    const/4 v6, 0x0

    .line 374
    .local v6, "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    const/4 v0, 0x0

    .line 375
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    const/4 v2, -0x1

    .line 376
    .local v2, "networkType":I
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v1

    .line 377
    .local v1, "cdmaSubscription":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 378
    .local v3, "numPhones":I
    const/4 v4, 0x0

    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    .local v4, "phoneId":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 379
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/PhoneFactory;->calculateNetworkType(Landroid/content/Context;I)I

    move-result v2

    .line 380
    const-string/jumbo v7, "PhoneFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "svlteInit, phoneId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", networkType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget v7, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    if-ne v7, v4, :cond_0

    .line 382
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 383
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v7, v4

    .line 384
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 382
    invoke-direct {v0, p0, v7, v8, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 387
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v8, Lcom/android/internal/telephony/RIL;

    .line 390
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 387
    invoke-direct {v8, p0, v2, v1, v9}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v8, v7, v4

    .line 391
    new-instance v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteDcPhone;

    .line 392
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v7, v4

    .line 393
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 394
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v9

    .line 391
    invoke-direct {v6, p0, v7, v8, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteDcPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 395
    .local v6, "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    new-instance v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 397
    const/4 v9, 0x3

    .line 395
    invoke-direct {v8, v6, v0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V

    aput-object v8, v7, v4

    .line 417
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->initialize()V

    .line 418
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    aget-object v8, v8, v4

    aput-object v8, v7, v4

    .line 378
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    new-instance v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteDcPhone;

    .line 400
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v7, v4

    .line 401
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 399
    invoke-direct {v6, p0, v7, v8, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteDcPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 404
    .restart local v6    # "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v8, Lcom/android/internal/telephony/RIL;

    .line 407
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 404
    invoke-direct {v8, p0, v2, v1, v9}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v8, v7, v4

    .line 408
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 409
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v7, v4

    .line 410
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 411
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v9

    .line 408
    invoke-direct {v0, p0, v7, v8, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 413
    .restart local v0    # "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    new-instance v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 415
    const/4 v9, 0x2

    .line 413
    invoke-direct {v8, v6, v0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V

    aput-object v8, v7, v4

    goto :goto_1

    .line 420
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    :cond_1
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->make(Landroid/content/Context;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .line 421
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->connectRilSocket()V

    .line 423
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    .line 424
    .local v5, "sCdmaSocketSlotId":I
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 425
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteIndex(I)V

    .line 426
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->make([Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;

    .line 372
    return-void
.end method
