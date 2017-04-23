.class Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;
.super Landroid/os/Handler;
.source "RecoveryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/recovery/RecoveryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecoveryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/recovery/RecoveryManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/recovery/RecoveryManagerService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;->this$0:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 268
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 269
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "RecoveryManagerService"

    const-string/jumbo v1, "Warning : System server boot up timeout : 30s !!"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "RecoveryManagerService"

    const-string/jumbo v1, "Recovery Manager Service : MSG_REBOOT_NORMAL"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;->this$0:Lcom/mediatek/recovery/RecoveryManagerService;

    # invokes: Lcom/mediatek/recovery/RecoveryManagerService;->NormalReboot()V
    invoke-static {v0}, Lcom/mediatek/recovery/RecoveryManagerService;->access$000(Lcom/mediatek/recovery/RecoveryManagerService;)V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 272
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v0

    .line 274
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
