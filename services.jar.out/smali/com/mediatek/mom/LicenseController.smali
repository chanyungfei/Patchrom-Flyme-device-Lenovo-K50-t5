.class Lcom/mediatek/mom/LicenseController;
.super Lcom/mediatek/mom/ControllerBase;
.source "LicenseController.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "LicenseController"

.field private static mInstance:Lcom/mediatek/mom/ControllerBase;

.field private static mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/mediatek/mom/LicenseController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    .line 59
    sput-object v0, Lcom/mediatek/mom/LicenseController;->mPm:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 62
    invoke-static {}, Lcom/mediatek/mom/LicenseController;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/mediatek/mom/LicenseController;->mPm:Landroid/content/pm/IPackageManager;

    .line 63
    return-void
.end method

.method private checkCertificate(Landroid/content/pm/PackageInfo;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "LicenseController"

    const-string/jumbo v1, "Package without C! "

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v2

    .line 190
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    .line 192
    invoke-static {p2, v0}, Lcom/mediatek/mom/ManagerIdentityHelper;->checkSignature(ILandroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, "LicenseController"

    const-string/jumbo v1, "Invalid C! "

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v2
.end method

.method private checkHandshake(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "android.permission.REBOOT_IPO"

    .line 175
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "LicenseController"

    const-string/jumbo v1, "Package without P! "

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v2

    .line 175
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 177
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    .line 178
    if-eq v0, v1, :cond_2

    .line 186
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, "LicenseController"

    const-string/jumbo v1, "Invalid P! "

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v2
.end method

.method public static checkManagerIdentity(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/LicenseController;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 81
    if-eqz v2, :cond_1

    .line 93
    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v1, v3, :cond_2

    .line 99
    :cond_0
    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "LicenseController"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No packages are found with uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    return v1

    .line 88
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LicenseController"

    const-string/jumbo v3, "getPackagesForUid() failed! "

    .line 86
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    return v1

    .line 93
    :cond_2
    aget-object v0, v2, v1

    .line 94
    invoke-static {v0}, Lcom/mediatek/mom/LicenseController;->checkManagerIdentityInner(Ljava/lang/String;)I

    move-result v0

    .line 95
    if-nez v0, :cond_0

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static checkManagerIdentity(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 105
    if-eqz p0, :cond_0

    const-string/jumbo v0, "LicenseController"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkManagerIdentity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p0}, Lcom/mediatek/mom/LicenseController;->checkManagerIdentityInner(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkManagerIdentityInner(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-static {p0}, Lcom/mediatek/mom/PackageController;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 116
    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 117
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 118
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 119
    invoke-static {v0, v1, p0}, Lcom/mediatek/mom/ManagerIdentityHelper;->getAuthorizedIdentity(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static final getInstance()Lcom/mediatek/mom/ControllerBase;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/mediatek/mom/LicenseController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    sget-object v0, Lcom/mediatek/mom/LicenseController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lcom/mediatek/mom/LicenseController;

    invoke-direct {v0}, Lcom/mediatek/mom/LicenseController;-><init>()V

    sput-object v0, Lcom/mediatek/mom/LicenseController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    goto :goto_0
.end method


# virtual methods
.method public checkProtocol(II)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 126
    if-eqz p2, :cond_0

    .line 131
    invoke-static {p2}, Lcom/mediatek/mom/ManagerIdentityHelper;->needVerifyProtocol(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {p2}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentityObject(I)Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v2}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->isVerified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 147
    sget-object v0, Lcom/mediatek/mom/LicenseController;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 148
    if-eqz v4, :cond_4

    .line 152
    array-length v5, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_5

    const-string/jumbo v0, "LicenseController"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkProtocol("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") passed!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v2}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->verified()V

    .line 170
    return v9

    :cond_0
    const-string/jumbo v0, "LicenseController"

    const-string/jumbo v2, "Not an authorized identity"

    .line 127
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v1

    .line 132
    :cond_1
    return v9

    :cond_2
    const-string/jumbo v0, "LicenseController"

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The identity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v1

    .line 143
    :cond_3
    return v9

    :cond_4
    :try_start_1
    const-string/jumbo v0, "LicenseController"

    const-string/jumbo v2, "getPackagesForUid() with null packages! "

    .line 149
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v1

    .line 152
    :cond_5
    aget-object v6, v4, v0

    .line 153
    sget-object v7, Lcom/mediatek/mom/LicenseController;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v8, 0x1040

    invoke-interface {v7, v6, v8, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 155
    invoke-direct {p0, v6, p2}, Lcom/mediatek/mom/LicenseController;->checkCertificate(Landroid/content/pm/PackageInfo;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 158
    invoke-direct {p0, v6}, Lcom/mediatek/mom/LicenseController;->checkHandshake(Landroid/content/pm/PackageInfo;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_7

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 156
    :cond_6
    return v1

    .line 159
    :cond_7
    return v1

    .line 165
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LicenseController"

    const-string/jumbo v3, "get PackagesInfo failed! "

    .line 163
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    return v1
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
