.class Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;
.super Ljava/lang/Thread;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverrideSystemThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 3646
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 3647
    const-string/jumbo v0, "AudioProfileService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3646
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3653
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3655
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    monitor-enter v1

    .line 3656
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-set0(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3659
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3663
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3651
    return-void

    .line 3655
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
