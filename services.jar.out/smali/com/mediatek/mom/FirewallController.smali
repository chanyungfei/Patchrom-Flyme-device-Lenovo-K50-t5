.class Lcom/mediatek/mom/FirewallController;
.super Lcom/mediatek/mom/ControllerBase;
.source "FirewallController.java"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static final MAX_APP_NUM:I = 0xff

.field public static final NAME:Ljava/lang/String; = "FirewallController"

.field private static final mApplicationPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/mediatek/mom/ControllerBase;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mediatek/mom/FirewallController;->mApplicationPool:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/mediatek/mom/FirewallController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/mediatek/mom/ControllerBase;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/mediatek/mom/FirewallController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    sget-object v0, Lcom/mediatek/mom/FirewallController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/mediatek/mom/FirewallController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lcom/mediatek/mom/FirewallController;

    invoke-direct {v0}, Lcom/mediatek/mom/FirewallController;-><init>()V

    sput-object v0, Lcom/mediatek/mom/FirewallController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    const-string/jumbo v0, "FirewallController"

    const-string/jumbo v1, "Create MobileManagerController:FirewallController"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "null FirewallController"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearAllSettings()Z
    .locals 3

    .prologue
    .line 86
    const/4 v1, 0x1

    const-string/jumbo v0, "network_management"

    .line 87
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "mobile"

    .line 91
    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->clearFirewallChain(Ljava/lang/String;)V

    const-string/jumbo v2, "wifi"

    .line 92
    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->clearFirewallChain(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 101
    :goto_0
    sget-object v1, Lcom/mediatek/mom/FirewallController;->mApplicationPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 103
    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageStatusChange(ILjava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const-string/jumbo v0, "FirewallController"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageStatusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    packed-switch p3, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "network_management"

    .line 118
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 121
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/FirewallController;->mApplicationPool:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    if-nez v0, :cond_0

    const-string/jumbo v0, "FirewallController"

    const-string/jumbo v1, "No found"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string/jumbo v2, "FirewallController"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V

    .line 128
    sget-object v0, Lcom/mediatek/mom/FirewallController;->mApplicationPool:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onUserStatusChange(II)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public setFirewallPolicy(IIZ)V
    .locals 6

    .prologue
    const-string/jumbo v0, ""

    const-string/jumbo v0, "FirewallController"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFirewallPolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/mediatek/mom/FirewallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    .line 160
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :try_start_0
    const-string/jumbo v0, "network_management"

    .line 165
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 167
    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "FirewallController"

    const-string/jumbo v1, "null packages"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 160
    :cond_1
    aget-object v3, v1, v0

    .line 161
    sget-object v4, Lcom/mediatek/mom/FirewallController;->mApplicationPool:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    const-string/jumbo v1, "FirewallController"

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/mom/FirewallController;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method
