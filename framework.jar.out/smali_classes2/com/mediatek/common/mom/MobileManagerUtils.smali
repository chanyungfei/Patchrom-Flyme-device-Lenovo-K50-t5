.class public Lcom/mediatek/common/mom/MobileManagerUtils;
.super Ljava/lang/Object;
.source "MobileManagerUtils.java"


# static fields
.field private static final FEATURE_SUPPORTED:Z

.field private static final PRINT_DEBUG_BACKTRACE:Z

.field private static final TAG:Ljava/lang/String; = "MobileManager"

.field private static sMomInstance:Lcom/mediatek/common/mom/IMobileManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    const-string/jumbo v2, "ro.mtk_mobile_management"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 59
    sput-boolean v2, Lcom/mediatek/common/mom/MobileManagerUtils;->FEATURE_SUPPORTED:Z

    .line 62
    const-string/jumbo v2, "persist.moms.debug.backtrace"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 61
    :goto_0
    sput-boolean v0, Lcom/mediatek/common/mom/MobileManagerUtils;->PRINT_DEBUG_BACKTRACE:Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/common/mom/MobileManagerUtils;->sMomInstance:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 57
    return-void

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIntentPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;I)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callingUid"    # I

    .prologue
    .line 126
    sget-boolean v2, Lcom/mediatek/common/mom/MobileManagerUtils;->FEATURE_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, "data":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 129
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v2, p0, p2, v0}, Lcom/mediatek/common/mom/MobileManagerUtils;->decidePermissionAndData(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "permission":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 131
    invoke-static {v1, p3, v0}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const/4 v2, 0x0

    return v2

    .line 137
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "permission":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static checkPermission(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "callingUid"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static checkPermission(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 4
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 86
    sget-boolean v2, Lcom/mediatek/common/mom/MobileManagerUtils;->FEATURE_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 87
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->printDebugBacktrace()V

    .line 89
    :try_start_0
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->getServiceInstance()Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v1

    .line 90
    .local v1, "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-interface {v1, p0, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermissionWithData(Ljava/lang/String;ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    return v3

    .line 93
    .end local v1    # "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MobileManager"

    const-string/jumbo v3, "checkPermission failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static checkPermissionAsync(Ljava/lang/String;ILcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 1
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "callback"    # Lcom/mediatek/common/mom/IRequestedPermissionCallback;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermissionAsync(Ljava/lang/String;ILcom/mediatek/common/mom/IRequestedPermissionCallback;Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public static checkPermissionAsync(Ljava/lang/String;ILcom/mediatek/common/mom/IRequestedPermissionCallback;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "callback"    # Lcom/mediatek/common/mom/IRequestedPermissionCallback;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 101
    sget-boolean v2, Lcom/mediatek/common/mom/MobileManagerUtils;->FEATURE_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 102
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->printDebugBacktrace()V

    .line 104
    :try_start_0
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->getServiceInstance()Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v1

    .line 105
    .local v1, "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-interface {v1, p0, p1, p3, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermissionAsyncWithData(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MobileManager"

    const-string/jumbo v3, "checkPermissionAsync failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static decidePermissionAndData(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p0, "intentPermission"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "newPermission":Ljava/lang/String;
    const-string/jumbo v2, "android.permission.CALL_PHONE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const-string/jumbo v0, "sub-permission.MAKE_CALL"

    .line 144
    .local v0, "newPermission":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 145
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v2, "phoneNumber"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "newPermission":Ljava/lang/String;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getServiceInstance()Lcom/mediatek/common/mom/IMobileManagerService;
    .locals 2

    .prologue
    .line 158
    sget-object v1, Lcom/mediatek/common/mom/MobileManagerUtils;->sMomInstance:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v1, :cond_0

    .line 159
    const-string/jumbo v1, "mobile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 160
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/common/mom/MobileManagerUtils;->sMomInstance:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 162
    :cond_0
    sget-object v1, Lcom/mediatek/common/mom/MobileManagerUtils;->sMomInstance:Lcom/mediatek/common/mom/IMobileManagerService;

    return-object v1
.end method

.method public static getUserConfirmTime(IJ)J
    .locals 7
    .param p0, "userId"    # I
    .param p1, "anrTime"    # J

    .prologue
    .line 113
    const-wide/16 v2, 0x0

    .line 114
    .local v2, "time":J
    sget-boolean v4, Lcom/mediatek/common/mom/MobileManagerUtils;->FEATURE_SUPPORTED:Z

    if-eqz v4, :cond_0

    .line 116
    :try_start_0
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->getServiceInstance()Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v1

    .line 117
    .local v1, "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-interface {v1, p0, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->getUserConfirmTime(IJ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 122
    .end local v1    # "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    :cond_0
    :goto_0
    return-wide v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MobileManager"

    const-string/jumbo v5, "getUserConfirmTime() failed!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    const-string/jumbo v3, "persist.sys.mtk.disable.moms"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 74
    .local v0, "DISABLE_CTA_FOR_TEST":Z
    :goto_0
    sget-boolean v3, Lcom/mediatek/common/mom/MobileManagerUtils;->FEATURE_SUPPORTED:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .line 73
    .end local v0    # "DISABLE_CTA_FOR_TEST":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "DISABLE_CTA_FOR_TEST":Z
    goto :goto_0

    :cond_2
    move v1, v2

    .line 74
    goto :goto_1
.end method

.method private static printDebugBacktrace()V
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/mediatek/common/mom/MobileManagerUtils;->PRINT_DEBUG_BACKTRACE:Z

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    :cond_0
    return-void
.end method
