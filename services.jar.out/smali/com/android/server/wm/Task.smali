.class Lcom/android/server/wm/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field final mAppTokens:Lcom/android/server/wm/AppTokenList;

.field mDeferRemoval:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mTaskId:I

.field final mUserId:I


# direct methods
.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 40
    iput p1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 41
    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 42
    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 43
    iput-object p4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 39
    return-void
.end method

.method private isInMiniMax(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 146
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isInMiniMax(I)Z

    move-result v0

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addAppToken(ILcom/android/server/wm/AppWindowToken;)V
    .locals 5
    .param p1, "addPos"    # I
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 52
    .local v0, "lastPos":I
    if-lt p1, v0, :cond_2

    .line 53
    move p1, v0

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/AppTokenList;->add(ILjava/lang/Object;)V

    .line 63
    iput-object p0, p2, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 64
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 67
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v3}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->onAppTokenAdded(Landroid/os/IBinder;I)V

    .line 50
    :cond_1
    return-void

    .line 55
    :cond_2
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_0

    if-ge v1, p1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_3

    .line 58
    add-int/lit8 p1, p1, 0x1

    .line 55
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method moveTaskToStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToStack: removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    const-string/jumbo v2, " from stack="

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "moveTask"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x791b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 104
    :cond_2
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 94
    return-void
.end method

.method removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 5
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    .local v0, "removed":Z
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->onAppTokenRemoved(Landroid/os/IBinder;I)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 116
    const-string/jumbo v2, "removeAppToken: last token"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 115
    const/16 v2, 0x791b

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 117
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeLocked()V

    .line 121
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 125
    return v0
.end method

.method removeLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->isInMiniMax(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTask: removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "removeTask"

    aput-object v1, v0, v4

    const/16 v1, 0x791b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 84
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 87
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isInMiniMax(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 90
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "[BMW] removeTask:delete task from mTaskIdToTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    return-void

    .line 78
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTask: deferring removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 80
    return-void
.end method

.method setSendingToBottom(Z)V
    .locals 2
    .param p1, "toBottom"    # Z

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "appTokenNdx":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method showForAllUsers()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 136
    .local v0, "tokensCount":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
