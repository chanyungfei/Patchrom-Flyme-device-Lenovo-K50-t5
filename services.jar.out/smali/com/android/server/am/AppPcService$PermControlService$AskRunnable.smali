.class final Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;
.super Ljava/lang/Thread;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AskRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;
    }
.end annotation


# static fields
.field public static final DISMISS_TIMEOUT:J = 0x2ee0L

.field public static final MSG_PERM_IGNORED_TIMEOUT:I = 0x1


# instance fields
.field final code:I

.field mLooper:Landroid/os/Looper;

.field final mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

.field final packageName:Ljava/lang/String;

.field final result:Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;IILjava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReq;Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;)V
    .locals 0

    .prologue
    .line 2189
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    .line 2190
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2191
    iput p2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    .line 2192
    iput p3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    .line 2193
    iput-object p4, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->packageName:Ljava/lang/String;

    .line 2194
    iput-object p5, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    .line 2195
    iput-object p6, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->result:Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    .line 2196
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v0, "Security_PermControlService"

    const-string/jumbo v1, "Creating dialog box"

    .line 2201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->result:Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->register(Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;)V

    .line 2203
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2234
    :goto_0
    return-void

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->setIfPermUIShowing(Z)V

    .line 2207
    iget v0, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2209
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v1, v1, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 2210
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v2, v2, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppPcPermissionListener;

    .line 2211
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    if-nez v0, :cond_1

    const-string/jumbo v0, "Security_PermControlService"

    const-string/jumbo v1, "AskRunnable listener == null"

    .line 2230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget v1, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/server/am/AppPcService$PermControlService;->setAppPermissionResult(ILjava/lang/String;II)V

    goto :goto_0

    .line 2211
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const/4 v1, 0x0

    .line 2214
    :try_start_2
    iget v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    iget v3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    invoke-static {v5}, Lcom/lenovo/common/AppPcUtils;->getFirstPermissionByCode(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IAppPcPermissionListener;->onPermissionCheck(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 2217
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2218
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mLooper:Landroid/os/Looper;

    .line 2219
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    new-instance v1, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;

    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;-><init>(Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->setHandle(Landroid/os/Handler;)V

    .line 2221
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->sendTimeOutMessageDelay()V

    .line 2222
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2228
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Security_PermControlService"

    const-string/jumbo v2, "AskRunnable listener.onPermissionCheck error"

    .line 2225
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/android/server/am/AppPcService$PermControlService;->setAppPermissionResult(ILjava/lang/String;II)V

    .line 2227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
