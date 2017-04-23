.class final Landroid/app/SystemServiceRegistry$74;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lcom/mediatek/sensorhub/ISensorHubManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/mediatek/sensorhub/ISensorHubManager;
    .locals 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 806
    const/4 v2, 0x0

    .line 808
    .local v2, "sensorhubMgr":Lcom/mediatek/sensorhub/ISensorHubManager;
    :try_start_0
    const-string/jumbo v5, "sensorhubservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 809
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/sensorhub/ISensorHubService;

    move-result-object v4

    .line 810
    .local v4, "service":Lcom/mediatek/sensorhub/ISensorHubService;
    new-instance v3, Lcom/mediatek/sensorhub/SensorHubManager;

    invoke-direct {v3, v4}, Lcom/mediatek/sensorhub/SensorHubManager;-><init>(Lcom/mediatek/sensorhub/ISensorHubService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "sensorhubMgr":Lcom/mediatek/sensorhub/ISensorHubManager;
    .local v3, "sensorhubMgr":Lcom/mediatek/sensorhub/ISensorHubManager;
    move-object v2, v3

    .line 814
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v3    # "sensorhubMgr":Lcom/mediatek/sensorhub/ISensorHubManager;
    .end local v4    # "service":Lcom/mediatek/sensorhub/ISensorHubService;
    :goto_0
    return-object v2

    .line 811
    .restart local v2    # "sensorhubMgr":Lcom/mediatek/sensorhub/ISensorHubManager;
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 805
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$74;->createService(Landroid/app/ContextImpl;)Lcom/mediatek/sensorhub/ISensorHubManager;

    move-result-object v0

    return-object v0
.end method
