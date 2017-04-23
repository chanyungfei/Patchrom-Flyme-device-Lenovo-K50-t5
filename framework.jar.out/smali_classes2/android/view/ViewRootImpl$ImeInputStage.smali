.class final Landroid/view/ViewRootImpl$ImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    .prologue
    .line 4436
    iput-object p1, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 4437
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 4436
    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .prologue
    move-object v0, p1

    .line 4466
    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4467
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-static {}, Landroid/view/ViewRootImpl;->-get2()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->-get3()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->-get5()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4468
    :cond_0
    const-string/jumbo v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IME finishedEvent: handled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4469
    const-string/jumbo v3, ",viewAncestor = "

    .line 4468
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    :cond_1
    if-eqz p2, :cond_2

    .line 4472
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$ImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 4473
    return-void

    .line 4475
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$ImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4465
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 8
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4442
    iget-object v3, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-wrap3(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4461
    :cond_0
    return v6

    .line 4443
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 4444
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 4445
    iget-object v3, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const-string/jumbo v4, "7: IME stage"

    invoke-static {v3, v4}, Landroid/view/ViewRootImpl;->-set3(Landroid/view/ViewRootImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4446
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 4447
    .local v0, "event":Landroid/view/InputEvent;
    invoke-static {}, Landroid/view/ViewRootImpl;->-get2()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/ViewRootImpl;->-get3()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/ViewRootImpl;->-get5()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4448
    :cond_2
    const-string/jumbo v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sending input event to IME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    :cond_3
    iget-object v3, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p1, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v2

    .line 4451
    .local v2, "result":I
    if-ne v2, v7, :cond_4

    .line 4452
    return v7

    .line 4453
    :cond_4
    if-nez v2, :cond_5

    .line 4455
    return v6

    .line 4457
    :cond_5
    const/4 v3, 0x3

    return v3
.end method
