.class public Lcom/mediatek/telecom/FormattedLog$Builder;
.super Ljava/lang/Object;
.source "FormattedLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telecom/FormattedLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCallId:Ljava/lang/String;

.field private mCallNumber:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mExtraMessage:Ljava/lang/StringBuilder;

.field private mOpType:Lcom/mediatek/telecom/FormattedLog$OpType;

.field private mServiceName:Ljava/lang/String;

.field private mStatusInfo:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    .line 100
    return-void
.end method


# virtual methods
.method public declared-synchronized appendExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 234
    if-eqz p1, :cond_0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 237
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;
    .locals 5

    .prologue
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 249
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    .line 252
    :cond_0
    new-instance v0, Lcom/mediatek/telecom/FormattedLog;

    const-string/jumbo v1, "[Debug][%s][%s][%s][%s][%s][%s] %s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    .line 253
    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCategory:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mServiceName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mOpType:Lcom/mediatek/telecom/FormattedLog$OpType;

    invoke-static {v3}, Lcom/mediatek/telecom/FormattedLog;->-wrap0(Lcom/mediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 254
    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mAction:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallId:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 252
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/telecom/FormattedLog;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mediatek/telecom/FormattedLog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized buildDumpInfo()Lcom/mediatek/telecom/FormattedLog;
    .locals 8

    .prologue
    monitor-enter p0

    .line 265
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v2, "statusInfo":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 267
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 270
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "statusInfo":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 282
    .restart local v1    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "statusInfo":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 283
    const-string/jumbo v3, "unknown"

    iput-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    .line 286
    :cond_2
    new-instance v3, Lcom/mediatek/telecom/FormattedLog;

    const-string/jumbo v4, "[Debug][%s][%s][Dump][%s][%s]-%s-%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    .line 287
    iget-object v6, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCategory:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mServiceName:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallId:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const/4 v6, 0x4

    aput-object v2, v5, v6

    iget-object v6, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 286
    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/telecom/FormattedLog;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mediatek/telecom/FormattedLog;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized resetStatusInfo(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 205
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 208
    return-object p0

    .line 206
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 148
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mAction:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 149
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 178
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 179
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 160
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "conferenceCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 166
    return-object p0

    .line 161
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 112
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCategory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 113
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 219
    if-eqz p1, :cond_0

    .line 220
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    .line 221
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 223
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "type"    # Lcom/mediatek/telecom/FormattedLog$OpType;

    .prologue
    monitor-enter p0

    .line 136
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mOpType:Lcom/mediatek/telecom/FormattedLog$OpType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 137
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mServiceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 125
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 191
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 194
    return-object p0

    .line 191
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
