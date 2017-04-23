.class Lcom/mediatek/search/SearchEngineManagerService$1;
.super Landroid/database/ContentObserver;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/SearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/search/SearchEngineManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/search/SearchEngineManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/search/SearchEngineManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService$1;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$1;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->-wrap0(Lcom/mediatek/search/SearchEngineManagerService;)V

    .line 109
    return-void
.end method
