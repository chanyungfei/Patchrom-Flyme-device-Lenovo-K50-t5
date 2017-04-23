.class public Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;
.super Ljava/lang/Object;
.source "MessageLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrappmanager/MessageLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CircularMessageInfoArray"
.end annotation


# instance fields
.field private mElem:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

.field private mHead:I

.field private mLastElem:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

.field private mSize:I

.field private mTail:I

.field final synthetic this$0:Lcom/mediatek/anrappmanager/MessageLogger;


# direct methods
.method public constructor <init>(Lcom/mediatek/anrappmanager/MessageLogger;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 273
    iput-object p1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->this$0:Lcom/mediatek/anrappmanager/MessageLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    add-int/lit8 v2, p2, 0x1

    .line 275
    new-array v0, v2, [Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    move v0, v1

    .line 276
    :goto_0
    if-lt v0, v2, :cond_0

    .line 279
    iput v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    .line 280
    iput v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mLastElem:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    .line 282
    iput v2, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mSize:I

    .line 283
    return-void

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    new-instance v4, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    invoke-direct {v4, p1}, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;-><init>(Lcom/mediatek/anrappmanager/MessageLogger;)V

    aput-object v4, v3, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getLocked(I)Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    .locals 3

    .prologue
    .line 302
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mSize:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add()Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    .locals 2

    .prologue
    monitor-enter p0

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->full()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mLastElem:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    .line 331
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    .line 332
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mSize:I

    if-eq v0, v1, :cond_2

    .line 336
    :goto_1
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mLastElem:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 323
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    .line 324
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 325
    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x0

    .line 333
    :try_start_2
    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public empty()Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public full()Z
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized get(I)Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    .locals 1

    .prologue
    monitor-enter p0

    .line 310
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 313
    return-object v0

    .line 310
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 311
    invoke-direct {p0, p1}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->getLocked(I)Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLast()Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mLastElem:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 294
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 297
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mSize:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    sub-int/2addr v0, v1

    return v0

    .line 295
    :cond_0
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mTail:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->mHead:I

    sub-int/2addr v0, v1

    return v0
.end method
