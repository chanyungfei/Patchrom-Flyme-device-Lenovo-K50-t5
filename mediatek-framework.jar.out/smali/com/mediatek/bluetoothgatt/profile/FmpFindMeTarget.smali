.class public Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTarget;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "FmpFindMeTarget.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "FmpFindMeTarget"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 71
    const-string/jumbo v0, "FmpFindMeTarget"

    const-string/jumbo v1, "FmpFindMeTarget()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method protected loadServicesConfig()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Ias;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Ias;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTarget;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 78
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_IAS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTarget;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 76
    return-void
.end method
