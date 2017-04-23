.class Lcom/android/server/display/WifiDisplayController$60;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->requestWaitConnection(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 4438
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$60;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4441
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$60;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4442
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$60;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap37(Lcom/android/server/display/WifiDisplayController;)V

    .line 4440
    :cond_0
    return-void
.end method
