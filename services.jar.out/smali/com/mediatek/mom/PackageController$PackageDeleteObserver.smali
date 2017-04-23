.class Lcom/mediatek/mom/PackageController$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PackageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/PackageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mom/PackageController;


# direct methods
.method constructor <init>(Lcom/mediatek/mom/PackageController;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/mediatek/mom/PackageController$PackageDeleteObserver;->this$0:Lcom/mediatek/mom/PackageController;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const-string/jumbo v0, "PackageController"

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageDeleted("

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

    .line 256
    return-void
.end method
