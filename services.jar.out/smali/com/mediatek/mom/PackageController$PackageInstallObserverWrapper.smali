.class Lcom/mediatek/mom/PackageController$PackageInstallObserverWrapper;
.super Landroid/app/PackageInstallObserver;
.source "PackageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/PackageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageInstallObserverWrapper"
.end annotation


# instance fields
.field mCallback:Lcom/mediatek/common/mom/IPackageInstallCallback;


# direct methods
.method public constructor <init>(Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/mediatek/mom/PackageController$PackageInstallObserverWrapper;->mCallback:Lcom/mediatek/common/mom/IPackageInstallCallback;

    .line 241
    iput-object p1, p0, Lcom/mediatek/mom/PackageController$PackageInstallObserverWrapper;->mCallback:Lcom/mediatek/common/mom/IPackageInstallCallback;

    .line 242
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const-string/jumbo v0, "PackageController"

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageInstalled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PackageController$PackageInstallObserverWrapper;->mCallback:Lcom/mediatek/common/mom/IPackageInstallCallback;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/mom/IPackageInstallCallback;->onPackageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method
