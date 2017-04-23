.class Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->-get0(Lcom/mediatek/search/SearchEngineManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->-wrap0(Lcom/mediatek/search/SearchEngineManagerService;)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->-get0(Lcom/mediatek/search/SearchEngineManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;

    iget-object v2, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v2, v2, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;)V

    .line 127
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method
