.class Lcom/android/server/am/ActivityManagerService$37;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->releaseThreadMemory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 23754
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$37;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 23757
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v1, "swapMoreMemory start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23758
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$37;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$37;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->swapMoreMemory(Lcom/android/server/wm/WindowManagerService;)V

    .line 23759
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v1, "swapMoreMemory end"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23756
    return-void
.end method
