.class public Lcom/mediatek/datashaping/DataShapingService;
.super Lcom/android/server/SystemService;
.source "DataShapingService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mImpl:Lcom/mediatek/datashaping/DataShapingServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 10
    const-string/jumbo v0, "DataShapingService"

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingService;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-direct {v0, p1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingService;->mImpl:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .line 13
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 26
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingService;->mImpl:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->start()V

    .line 25
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 20
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "Start DataShaping Service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string/jumbo v0, "data_shaping"

    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingService;->mImpl:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/datashaping/DataShapingService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 19
    return-void
.end method
