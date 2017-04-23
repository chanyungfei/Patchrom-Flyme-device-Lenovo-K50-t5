.class public Landroid/security/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static final INSTANCE:Landroid/security/NetworkSecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/security/NetworkSecurityPolicy;

    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;-><init>()V

    sput-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/security/NetworkSecurityPolicy;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-object v0
.end method


# virtual methods
.method public isCleartextTrafficPermitted()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public isSendingTrafficPermittedByMom(I)Z
    .locals 3
    .param p1, "opType"    # I

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string/jumbo v0, "sub-permission.SEND_MMS"

    .line 103
    .local v0, "permissionName":Ljava/lang/String;
    if-ne p1, v2, :cond_0

    .line 104
    const-string/jumbo v0, "sub-permission.SEND_EMAIL"

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 106
    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 109
    .end local v0    # "permissionName":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public setCleartextTrafficPermitted(Z)V
    .locals 0
    .param p1, "permitted"    # Z

    .prologue
    .line 83
    invoke-static {p1}, Llibcore/net/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    .line 82
    return-void
.end method
