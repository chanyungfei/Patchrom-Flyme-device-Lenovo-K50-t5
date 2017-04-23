.class public Lcom/mediatek/anrmanager/ANRManager$DumpThread;
.super Ljava/lang/Thread;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DumpThread"
.end annotation


# instance fields
.field private mDumpPidList:[I

.field private mFilePath:Ljava/lang/String;

.field public mResult:Z

.field final synthetic this$0:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager;[ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 769
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$DumpThread;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/anrmanager/ANRManager$DumpThread;->mResult:Z

    .line 770
    iput-object p2, p0, Lcom/mediatek/anrmanager/ANRManager$DumpThread;->mDumpPidList:[I

    .line 771
    iput-object p3, p0, Lcom/mediatek/anrmanager/ANRManager$DumpThread;->mFilePath:Ljava/lang/String;

    .line 772
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 775
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$DumpThread;->mDumpPidList:[I

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/anrmanager/ANRManager$DumpThread;->mResult:Z

    .line 784
    return-void

    .line 775
    :cond_0
    aget v3, v1, v0

    .line 777
    iget-object v4, p0, Lcom/mediatek/anrmanager/ANRManager$DumpThread;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v4, v3}, Lcom/mediatek/anrmanager/ANRManager;->isJavaProcess(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 775
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_2
    iget-object v4, p0, Lcom/mediatek/anrmanager/ANRManager$DumpThread;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v4, v3}, Lcom/mediatek/anrmanager/ANRManager;->isProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "ANRManager"

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[DumpNative]DumpThread native process ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v4, p0, Lcom/mediatek/anrmanager/ANRManager$DumpThread;->mFilePath:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/Debug;->dumpNativeBacktraceToFile(ILjava/lang/String;)V

    goto :goto_1
.end method
