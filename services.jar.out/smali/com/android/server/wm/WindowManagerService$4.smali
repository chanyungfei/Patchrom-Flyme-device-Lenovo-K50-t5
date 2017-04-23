.class Lcom/android/server/wm/WindowManagerService$4;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->initPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1001
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/view/WindowManagerPolicyThread;->set(Ljava/lang/Thread;Landroid/os/Looper;)V

    .line 1003
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1006
    new-instance v1, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;

    invoke-direct {v1}, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;-><init>()V

    .line 1005
    invoke-static {v1}, Lcom/mediatek/anrappmanager/ANRAppManager;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/ANRAppManager;

    move-result-object v1

    .line 1007
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1005
    invoke-virtual {v1, v3, v2}, Lcom/mediatek/anrappmanager/ANRAppManager;->newMessageLogger(ZLjava/lang/String;)Landroid/util/Printer;

    move-result-object v1

    .line 1004
    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 1000
    return-void
.end method
