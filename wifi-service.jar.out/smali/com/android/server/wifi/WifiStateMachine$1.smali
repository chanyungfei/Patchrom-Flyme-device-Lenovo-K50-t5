.class Lcom/android/server/wifi/WifiStateMachine$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Lcom/android/server/net/NetlinkTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 5

    .prologue
    const v4, 0x2008c

    .line 1394
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "There is no CMD_UPDATE_LINKPROPERTIES in queue"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    .line 1392
    :goto_0
    return-void

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "CMD_UPDATE_LINKPROPERTIES already in queue, no sendMessage"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
