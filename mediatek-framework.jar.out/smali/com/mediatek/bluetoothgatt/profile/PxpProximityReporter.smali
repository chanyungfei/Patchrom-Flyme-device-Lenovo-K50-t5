.class public Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporter;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "PxpProximityReporter.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PxpProximityReporter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 73
    const-string/jumbo v0, "PxpProximityReporter"

    const-string/jumbo v1, "PxpProximityReporter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method


# virtual methods
.method protected loadServicesConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Lls;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Lls;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporter;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Ias;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Ias;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporter;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 81
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Tps;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Tps;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporter;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 82
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_LLS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporter;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 83
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_IAS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporter;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 84
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_TPS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporter;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 78
    return-void
.end method
