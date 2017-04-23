.class public Lcom/android/server/connectivity/KeepaliveTracker;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.CHANGE_NETWORK_STATE"

.field private static final TAG:Ljava/lang/String; = "KeepaliveTracker"


# instance fields
.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mKeepalives:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    .line 74
    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method private findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 231
    .local v0, "networkKeepalives":Ljava/util/HashMap;
    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "networkKeepalives":Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    .restart local v0    # "networkKeepalives":Ljava/util/HashMap;
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    const/4 v1, 0x0

    .local v1, "slot":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 240
    return v1

    .line 238
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 247
    :cond_3
    return v1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 359
    const-string/jumbo v5, "Packet keepalives:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 361
    iget-object v5, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 362
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 364
    iget-object v5, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "slot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 365
    .local v3, "slot":I
    iget-object v5, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 366
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 368
    .end local v0    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local v3    # "slot":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .line 370
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v4    # "slot$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 358
    return-void
.end method

.method public handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 288
    iget-object v7, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 289
    .local v2, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v2, :cond_2

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v1, "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "slot$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 292
    .local v3, "slot":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    invoke-static {v7}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->-wrap0(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v0

    .line 293
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    .end local v0    # "error":I
    .end local v3    # "slot":I
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "slotAndError$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 298
    .local v5, "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, p1, v8, v7}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_1

    .line 287
    .end local v1    # "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v4    # "slot$iterator":Ljava/util/Iterator;
    .end local v5    # "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "slotAndError$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 304
    iget v4, p2, Landroid/os/Message;->arg1:I

    .line 305
    .local v4, "slot":I
    iget v3, p2, Landroid/os/Message;->arg2:I

    .line 307
    .local v3, "reason":I
    const/4 v2, 0x0

    .line 309
    .local v2, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v2    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :goto_0
    if-nez v2, :cond_0

    .line 312
    const-string/jumbo v5, "KeepaliveTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Event for unknown keepalive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 316
    :cond_0
    if-nez v3, :cond_1

    iget-boolean v5, v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    if-eqz v5, :cond_2

    .line 323
    :cond_1
    iput-boolean v7, v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    .line 324
    if-nez v3, :cond_3

    .line 325
    const-string/jumbo v5, "KeepaliveTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Successfully stopped keepalive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_1
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 303
    :goto_2
    return-void

    .line 318
    :cond_2
    const-string/jumbo v5, "KeepaliveTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Started keepalive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    .line 320
    invoke-virtual {v2, v4, v3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->notifyMessenger(II)V

    goto :goto_2

    .line 327
    :cond_3
    const-string/jumbo v5, "KeepaliveTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Keepalive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    .restart local v2    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto/16 :goto_0
.end method

.method public handleStartKeepalive(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 252
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->getNai()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 253
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v2

    .line 254
    .local v2, "slot":I
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->start(I)V

    .line 250
    return-void
.end method

.method public handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # I

    .prologue
    .line 259
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 260
    .local v2, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ki$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 262
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    goto :goto_0

    .line 264
    .end local v0    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 265
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local v1    # "ki$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "slot"    # I
    .param p3, "reason"    # I

    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 271
    .local v1, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-nez v1, :cond_0

    .line 272
    const-string/jumbo v2, "KeepaliveTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempt to stop keepalive on nonexistent network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 275
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 276
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    if-nez v0, :cond_1

    .line 277
    const-string/jumbo v2, "KeepaliveTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempt to stop nonexistent keepalive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 280
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_2
    return-void
.end method

.method notifyMessenger(Landroid/os/Messenger;II)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "slot"    # I
    .param p3, "err"    # I

    .prologue
    .line 217
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 218
    .local v1, "message":Landroid/os/Message;
    const v2, 0x8100d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 219
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 220
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 221
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 12
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "intervalSeconds"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "srcAddrString"    # Ljava/lang/String;
    .param p6, "srcPort"    # I
    .param p7, "dstAddrString"    # Ljava/lang/String;
    .param p8, "dstPort"    # I

    .prologue
    .line 337
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    .line 338
    .local v11, "srcAddress":Ljava/net/InetAddress;
    invoke-static/range {p7 .. p7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 347
    .local v8, "dstAddress":Ljava/net/InetAddress;
    const/16 v2, 0x1194

    .line 346
    :try_start_1
    move/from16 v0, p6

    invoke-static {v11, v0, v8, v2}, Lcom/android/server/connectivity/KeepalivePacketData;->nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Lcom/android/server/connectivity/KeepalivePacketData;
    :try_end_1
    .catch Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 352
    .local v6, "packet":Lcom/android/server/connectivity/KeepalivePacketData;
    new-instance v1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    move-object v2, p0

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;-><init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/os/Messenger;Landroid/os/IBinder;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/KeepalivePacketData;I)V

    .line 353
    .local v1, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    const-string/jumbo v2, "KeepaliveTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Created keepalive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 355
    const v3, 0x8100b

    .line 354
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 334
    return-void

    .line 339
    .end local v1    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local v6    # "packet":Lcom/android/server/connectivity/KeepalivePacketData;
    .end local v8    # "dstAddress":Ljava/net/InetAddress;
    .end local v11    # "srcAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v10

    .line 340
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    const/16 v3, -0x15

    invoke-virtual {p0, p3, v2, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    .line 341
    return-void

    .line 348
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "dstAddress":Ljava/net/InetAddress;
    .restart local v11    # "srcAddress":Ljava/net/InetAddress;
    :catch_1
    move-exception v9

    .line 349
    .local v9, "e":Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
    iget v2, v9, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;->error:I

    const/4 v3, -0x1

    invoke-virtual {p0, p3, v3, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    .line 350
    return-void
.end method
