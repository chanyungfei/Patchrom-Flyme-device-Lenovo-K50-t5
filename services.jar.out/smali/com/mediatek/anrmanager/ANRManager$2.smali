.class Lcom/mediatek/anrmanager/ANRManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/anrmanager/ANRManager;->registerDumpNBTReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method constructor <init>(Lcom/mediatek/anrmanager/ANRManager;)V
    .locals 0

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$2;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v0, "NBT_DUMP_PROCESS"

    .line 1175
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    if-nez v0, :cond_1

    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v1, "Process name is null"

    .line 1190
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .line 1177
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    .line 1178
    aput-object v0, v1, v3

    .line 1179
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 1180
    array-length v2, v1

    if-gtz v2, :cond_2

    const-string/jumbo v1, "ANRManager"

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No process crosponds to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "android.intent.action.ACTION_ADD_NBT_DUMP_PID"

    .line 1181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "android.intent.action.ACTION_REMOVE_NBT_DUMP_PID"

    .line 1183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$2;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->removeNBTDumpPid(I)V

    goto :goto_0

    .line 1182
    :cond_3
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$2;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->checkNBTDumpPid(I)V

    goto :goto_0
.end method
