.class public Lcom/android/server/wm/WindowManagerService$MWWmsCallback;
.super Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWWmsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 13724
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public enableFocusedFrame(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 13808
    const/4 v0, 0x0

    .line 13809
    .local v0, "needUpdate":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v3

    monitor-enter v3

    .line 13810
    :try_start_0
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BMW] enableFocusedFrame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13811
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ResizingFrame;->enableMotion(Z)V

    .line 13812
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ResizingFrame;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13813
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ResizingFrame;->copyBounds2Box()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13814
    const/4 v0, 0x1

    :cond_0
    monitor-exit v3

    .line 13817
    if-eqz v0, :cond_2

    .line 13819
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13821
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v2

    .line 13822
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ResizingFrame;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 13821
    invoke-virtual {v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getNextFloatStack(I)I

    move-result v1

    .line 13823
    .local v1, "nextStackId":I
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->resizeAndMoveStack(I)V

    .line 13826
    .end local v1    # "nextStackId":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 13807
    :cond_2
    return-void

    .line 13809
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public miniMaxTask(I)V
    .locals 11
    .param p1, "taskId"    # I

    .prologue
    .line 13833
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v8, "android.permission.MANAGE_APP_TOKENS"

    .line 13834
    const-string/jumbo v9, "miniMaxTask()"

    .line 13833
    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 13835
    new-instance v7, Ljava/lang/SecurityException;

    const-string/jumbo v8, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 13838
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 13839
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 13840
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_1

    iget-object v7, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_2

    :cond_1
    monitor-exit v8

    .line 13841
    return-void

    .line 13843
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 13844
    .local v2, "origId":J
    iget-object v1, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 13845
    .local v1, "appToken":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 13846
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v7, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 13847
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "winNdx":I
    :goto_1
    if-ltz v5, :cond_3

    .line 13848
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-static {v9, v7}, Lcom/android/server/wm/WindowManagerService;->-wrap5(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    .line 13847
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 13845
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 13852
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_4
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[BMW] miniMax taskId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13853
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 13832
    return-void

    .line 13838
    .end local v0    # "activityNdx":I
    .end local v1    # "appToken":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v2    # "origId":J
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public moveFloatingWindow(II)V
    .locals 5
    .param p1, "disX"    # I
    .param p2, "disY"    # I

    .prologue
    .line 13732
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_0

    .line 13733
    return-void

    .line 13736
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_1

    .line 13737
    return-void

    .line 13740
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v3

    monitor-enter v3

    .line 13741
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 13742
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ResizingFrame;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 13743
    mul-int/lit8 v2, p1, -0x1

    mul-int/lit8 v4, p2, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 13744
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ResizingFrame;->updateBoundary(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 13747
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 13729
    return-void

    .line 13740
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public resizeAndMoveStack(I)V
    .locals 6
    .param p1, "stackId"    # I

    .prologue
    .line 13860
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v3, "android.permission.MANAGE_APP_TOKENS"

    .line 13861
    const-string/jumbo v4, "resizeAndMoveStack()"

    .line 13860
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13862
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 13865
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13866
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 13867
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_1

    .line 13868
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BMW]resizeAndMoveStack: stackId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 13869
    const-string/jumbo v5, " not found."

    .line 13868
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 13870
    return-void

    .line 13872
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->computeStackSize()Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    monitor-exit v3

    .line 13874
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowManagerService;->resizeStack(ILandroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 13859
    return-void

    .line 13865
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public resizeFloatingWindow(III)V
    .locals 7
    .param p1, "direction"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 13755
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_0

    .line 13756
    return-void

    .line 13759
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v3, :cond_1

    .line 13760
    return-void

    .line 13763
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ResizingFrame;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 13765
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v1, v4, Landroid/view/DisplayInfo;->appWidth:I

    .line 13766
    .local v1, "appWidth":I
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v0, v4, Landroid/view/DisplayInfo;->appHeight:I

    .line 13768
    .local v0, "appHeight":I
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 13769
    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p3

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 13770
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v5, v0, 0x3

    if-ge v4, v5, :cond_6

    .line 13771
    iget v4, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 13776
    :cond_2
    :goto_0
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 13777
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 13778
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v5, v0, 0x3

    if-ge v4, v5, :cond_7

    .line 13779
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v5, v0, 0x3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 13784
    :cond_3
    :goto_1
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 13785
    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, p2

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 13786
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v5, v1, 0x3

    if-ge v4, v5, :cond_8

    .line 13787
    iget v4, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v1, 0x3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 13792
    :cond_4
    :goto_2
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 13793
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p2

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 13794
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v5, v1, 0x3

    if-ge v4, v5, :cond_9

    .line 13795
    iget v4, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v5, v1, 0x3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 13801
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->-get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ResizingFrame;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ResizingFrame;->updateBoundary(Landroid/graphics/Rect;)V

    .line 13802
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$MWWmsCallback;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 13752
    return-void

    .line 13772
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_2

    .line 13773
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 13780
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 13781
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 13788
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 13789
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 13796
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 13797
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_3
.end method
