.class Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Lcom/mediatek/anrmanager/ANRManager$IAnrBroadcastQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnrBroadcastQueue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderedBroadcastsPid()I
    .locals 5

    .prologue
    .line 181
    const/4 v1, -0x1

    .line 182
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v3, v2, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 185
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    monitor-exit v3

    .line 190
    return v1

    .line 182
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
