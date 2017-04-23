.class public Lcom/lenovo/common/SecurityManagerUtils;
.super Ljava/lang/Object;
.source "SecurityManagerUtils.java"


# static fields
.field private static final FEATURE_SUPPORTED:Z = true

.field private static final PRE_SECURITY_QUICK_START:Ljava/lang/String; = "security_quick_start"

.field private static final SERVICE_NAME:Ljava/lang/String; = "lenovopermission"

.field public static final TAG:Ljava/lang/String; = "SecurityManagerUtils"

.field private static sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppLock(Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 4

    .prologue
    .line 111
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object p1

    .line 112
    :cond_1
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppPcService;->checkAppLock(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityManagerUtils"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAppLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkAppLockForTask(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 151
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v0

    .line 152
    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    if-eqz p0, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 155
    if-nez v1, :cond_3

    .line 162
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppPcService;->checkAppLockForTask(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityManagerUtils"

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAppLockForTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v2, "security_quick_start"

    .line 156
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "SecurityManagerUtils"

    const-string/jumbo v2, "checkAppLockForTasksecurity_quick_start"

    .line 157
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppPcService;->accessLockPattern(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    return-void
.end method

.method public static checkAppOpsPermission(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 130
    if-eq v0, v1, :cond_1

    .line 133
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 134
    if-nez v1, :cond_2

    .line 145
    :goto_0
    return v4

    .line 127
    :cond_0
    return v4

    .line 131
    :cond_1
    return v4

    :cond_2
    const/4 v2, 0x0

    .line 136
    :try_start_0
    invoke-interface {v1, v0, p0, p1, v2}, Lcom/android/internal/app/IAppPcService;->checkOperationAsync(ILjava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 139
    return v0

    .line 137
    :cond_3
    return v4

    .line 139
    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityManagerUtils"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAppOpsPermission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkAppPcPermission(Ljava/lang/String;III)Z
    .locals 4

    .prologue
    .line 173
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 181
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    :try_start_0
    invoke-interface {v0, p3, p0, p1, p2}, Lcom/android/internal/app/IAppPcService;->checkOperationAsyncBySwitchCode(ILjava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityManagerUtils"

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAppPcPermission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 107
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IAppPcService;->checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityManagerUtils"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAutoStart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkIncomingCall(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 81
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/app/IAppPcService;->checkIncomingCall(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityManagerUtils"

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkIncomingCall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getServiceInstance()Lcom/android/internal/app/IAppPcService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    sget-object v0, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    return-object v0

    :cond_0
    const-string/jumbo v0, "lenovopermission"

    .line 53
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/android/internal/app/IAppPcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcService;

    move-result-object v0

    sput-object v0, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    goto :goto_0
.end method

.method public static isSendingTrafficPermittedByLenovoSecurity(I)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    if-eqz p0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, ""

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/common/SecurityManagerUtils;->checkAppPcPermission(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    return v4
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public static pmInstallApkWithCode(IILjava/lang/String;)I
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    :goto_0
    const v0, 0xffff

    .line 94
    return v0

    .line 88
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IAppPcService;->pmInstallApkWithCode(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityManagerUtils"

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pmInstallApkWithCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
