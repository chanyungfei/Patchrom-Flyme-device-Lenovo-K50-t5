.class Lcom/android/server/dreams/DreamController$DreamRecord$2;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamController$DreamRecord;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/dreams/DreamController$DreamRecord;
    .param p2, "val$service"    # Landroid/os/IBinder;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v2, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    .line 341
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->val$service:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 344
    const-string/jumbo v0, "DreamController"

    const-string/jumbo v1, "Binder is not null so attach"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->val$service:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/service/dreams/IDreamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamController;->-wrap0(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const-string/jumbo v0, "DreamController"

    const-string/jumbo v1, "Binder is null so stop dreaming"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string/jumbo v0, "DreamController"

    const-string/jumbo v1, "Denied permissions so binder returned null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-virtual {v0, v2}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    goto :goto_0
.end method
