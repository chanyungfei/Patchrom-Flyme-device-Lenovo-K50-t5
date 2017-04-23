.class final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_STATE:I = 0x1


# instance fields
.field private mActualBacklight:I

.field private mActualState:I

.field private mChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingState:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 363
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 364
    const-string/jumbo v0, "PhotonicModulator"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 357
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 358
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 359
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 360
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 363
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 390
    const-string/jumbo v0, "Photonic Modulator State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mActualState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mActualBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mChangeInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 387
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 407
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 408
    :try_start_0
    iget v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 409
    .local v3, "state":I
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    if-eq v3, v5, :cond_2

    const/4 v4, 0x1

    .line 410
    .local v4, "stateChanged":Z
    :goto_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 411
    .local v0, "backlight":I
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    if-eq v0, v5, :cond_3

    const/4 v1, 0x1

    .line 412
    .local v1, "backlightChanged":Z
    :goto_2
    if-nez v4, :cond_0

    if-eqz v1, :cond_4

    .line 421
    :cond_0
    iput v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 422
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 426
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 427
    const-string/jumbo v5, "DisplayPowerState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Updating screen state: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 428
    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    .line 427
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 428
    const-string/jumbo v7, ", backlight="

    .line 427
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 429
    const-string/jumbo v7, ", backlightChanged="

    .line 427
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-get1(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(II)V

    goto :goto_0

    .line 409
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v4    # "stateChanged":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "stateChanged":Z
    goto :goto_1

    .line 411
    .restart local v0    # "backlight":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "backlightChanged":Z
    goto :goto_2

    .line 414
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    .line 415
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-wrap1(Lcom/android/server/display/DisplayPowerState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :try_start_2
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit v6

    goto :goto_0

    .line 407
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v3    # "state":I
    .end local v4    # "stateChanged":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 418
    .restart local v0    # "backlight":I
    .restart local v1    # "backlightChanged":Z
    .restart local v3    # "state":I
    .restart local v4    # "stateChanged":Z
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method public setState(II)Z
    .locals 5
    .param p1, "state"    # I
    .param p2, "backlight"    # I

    .prologue
    const/4 v0, 0x1

    .line 368
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-eq p2, v2, :cond_2

    .line 370
    :cond_0
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    const-string/jumbo v2, "DisplayPowerState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requesting new screen state: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 372
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 372
    const-string/jumbo v4, ", backlight="

    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 376
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 378
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    if-nez v2, :cond_2

    .line 379
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    .line 380
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 383
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    monitor-exit v1

    return v0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
