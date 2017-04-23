.class Lcom/mediatek/datashaping/DataShapingServiceImpl$AppIdleStateChangeListener;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datashaping/DataShapingServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;


# direct methods
.method private constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$AppIdleStateChangeListener;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$AppIdleStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/datashaping/DataShapingServiceImpl$AppIdleStateChangeListener;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 543
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .locals 3
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 548
    const-string/jumbo v0, "DataShapingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onParoleStateChanged is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$AppIdleStateChangeListener;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 547
    return-void
.end method
