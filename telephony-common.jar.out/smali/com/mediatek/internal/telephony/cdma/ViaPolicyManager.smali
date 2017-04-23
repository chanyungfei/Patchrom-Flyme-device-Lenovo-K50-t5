.class public Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;
.super Ljava/lang/Object;
.source "ViaPolicyManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViaPolicyManager"

.field private static final VIA_GPS_PROCESS_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaGpsProcess"

.field private static final VIA_PLUS_CODE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaPlusCodeUtils"

.field private static final VIA_SMS_INTERFACES_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaSmsInterfacesAdapter"

.field private static final VIA_UTKSERVICE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.internal.telephony.cdma.utk.UtkService"

.field private static final mLock:Ljava/lang/Object;

.field private static sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

.field private static sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

.field private static sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

.field private static sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disposeUtkService(I)V
    .locals 3
    .param p0, "mPhoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPlusCodeUtils dispose UtkService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 135
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/cdma/IUtkService;->dispose()V

    .line 136
    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    .line 132
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 138
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/cdma/IUtkService;->dispose()V

    .line 139
    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPlusCodeUtils no need to dispose UtkService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    move-result-object v0

    .line 157
    .local v0, "gpsProcessInstance":Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getGpsProcess gpsProcessInstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 158
    return-object v0
.end method

.method public static getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    if-nez v0, :cond_1

    .line 62
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPlusCodeUtils sPlusCodeUtilsInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    if-nez v0, :cond_1

    .line 79
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPlusCodeUtils sSmsInterfacesInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;
    .locals 5
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v4, 0x0

    .line 99
    if-nez p2, :cond_0

    .line 100
    const-string/jumbo v2, "getPlusCodeUtils getUtkService ic == null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 101
    return-object v4

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    .line 104
    .local v1, "mPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPlusCodeUtils getUtkService mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 105
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 106
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_1

    .line 107
    const-string/jumbo v2, "getPlusCodeUtils getUtkService ca == null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 108
    return-object v4

    .line 110
    :cond_1
    if-nez v1, :cond_4

    .line 111
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_3

    .line 112
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 113
    :try_start_0
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_2

    .line 114
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 118
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPlusCodeUtils sUtkServiceInstanceSim1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 119
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    return-object v2

    .line 112
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 121
    :cond_4
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_6

    .line 122
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    :try_start_1
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_5

    .line 124
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    monitor-exit v3

    .line 128
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPlusCodeUtils sUtkServiceInstanceSim2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 129
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    return-object v2

    .line 122
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string/jumbo v0, "ViaPolicyManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method private static makeGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 218
    :try_start_0
    const-string/jumbo v7, "com.mediatek.internal.telephony.cdma.ViaGpsProcess"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 220
    .local v6, "gpsProcessClass":Ljava/lang/Class;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 221
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 222
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 235
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v6    # "gpsProcessClass":Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 236
    .local v5, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v7, "createGpsProcess InvocationTargetException, return default DefaultGpsProcess"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 237
    new-instance v7, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v7, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v7

    .line 232
    .end local v5    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    .line 233
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v7, "createGpsProcess NoSuchMethodException, return default DefaultGpsProcess"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 234
    new-instance v7, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v7, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v7

    .line 229
    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 230
    .local v3, "ex":Ljava/lang/InstantiationException;
    const-string/jumbo v7, "createGpsProcess InstantiationException, return default DefaultGpsProcess"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 231
    new-instance v7, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v7, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v7

    .line 226
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 227
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "createGpsProcess IllegalAccessException, return default DefaultGpsProcess"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 228
    new-instance v7, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v7, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v7

    .line 223
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 224
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "createGpsProcess ClassNotFoundException, return default DefaultGpsProcess"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 225
    new-instance v7, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v7, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v7
.end method

.method private static makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 5

    .prologue
    .line 163
    :try_start_0
    const-string/jumbo v4, "com.mediatek.internal.telephony.cdma.ViaPlusCodeUtils"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 164
    .local v3, "policyClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "ex":Ljava/lang/InstantiationException;
    const-string/jumbo v4, "makePlusCodeUtis InstantiationException, return default DefaultPlusCodeUtils"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 173
    new-instance v4, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    return-object v4

    .line 168
    .end local v2    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "makePlusCodeUtis IllegalAccessException, return default DefaultPlusCodeUtils"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 170
    new-instance v4, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    return-object v4

    .line 165
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "makePlusCodeUtis ClassNotFoundException, return default DefaultPlusCodeUtils"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 167
    new-instance v4, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    return-object v4
.end method

.method private static makeSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    .locals 5

    .prologue
    .line 179
    :try_start_0
    const-string/jumbo v4, "com.mediatek.internal.telephony.cdma.ViaSmsInterfacesAdapter"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 180
    .local v3, "policyClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "ex":Ljava/lang/InstantiationException;
    const-string/jumbo v4, "makeSmsInterfaces InstantiationException, return default DefaultSmsInterfaces"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 189
    new-instance v4, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    return-object v4

    .line 184
    .end local v2    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "makeSmsInterfaces IllegalAccessException, return default DefaultSmsInterfaces"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 186
    new-instance v4, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    return-object v4

    .line 181
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 182
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "makeSmsInterfaces ClassNotFoundException, return default DefaultSmsInterfaces"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 183
    new-instance v4, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    return-object v4
.end method

.method private static makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;
    .locals 10
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 196
    :try_start_0
    const-string/jumbo v6, "com.android.internal.telephony.cdma.utk.UtkService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 197
    .local v5, "policyClass":Ljava/lang/Class;
    const-string/jumbo v6, "getInstance"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 198
    const-class v8, Landroid/content/Context;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 197
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 199
    .local v4, "mUtkMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/cdma/IUtkService;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 209
    .end local v4    # "mUtkMethod":Ljava/lang/reflect/Method;
    .end local v5    # "policyClass":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 210
    .local v3, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v6, "makeUtkService InvocationTargetException, return default DefaultUtkService"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 211
    new-instance v6, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    return-object v6

    .line 206
    .end local v3    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 207
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v6, "makeUtkService NoSuchMethodException, return default DefaultUtkService"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 208
    new-instance v6, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    return-object v6

    .line 203
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 204
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "makeUtkService IllegalAccessException, return default DefaultUtkService"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 205
    new-instance v6, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    return-object v6

    .line 200
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "makeUtkService ClassNotFoundException, return default DefaultUtkService"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 202
    new-instance v6, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    return-object v6
.end method
