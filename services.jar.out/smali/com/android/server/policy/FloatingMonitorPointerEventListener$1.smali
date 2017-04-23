.class Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatingMonitorPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/FloatingMonitorPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    .line 119
    .local v0, "motionX":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v1, v2

    .line 121
    .local v1, "motionY":I
    sget-boolean v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 122
    const-string/jumbo v2, "FloatingMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BMW]onDown e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    const-string/jumbo v6, ", mFocusWindow = "

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get5(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v6

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 124
    const-string/jumbo v6, ", focusFrame ="

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 124
    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get5(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get7(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    monitor-enter v5

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get7(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    const-string/jumbo v2, "FloatingMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BMW]Outside of the monitor region.Skip the motion event. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 131
    return v4

    :cond_1
    monitor-exit v5

    .line 135
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget-object v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mFocusWindowLock:Ljava/lang/Object;

    monitor-enter v5

    .line 136
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get5(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 137
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get3(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get5(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 144
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v5}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 145
    iget-object v7, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v7}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x0

    iget-object v8, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v8}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x0

    .line 144
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 147
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get3(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v5}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get3(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get3(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 148
    iget-object v7, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v7}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get3(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v8}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get1(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v8}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get3(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v9}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get2(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)I

    move-result v9

    add-int/2addr v8, v9

    .line 147
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 150
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get9(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v5}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, -0x1e

    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, -0x1e

    .line 151
    iget-object v7, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v7}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x1e

    iget-object v8, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v8}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 150
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get0(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v5}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, -0x1e

    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 153
    iget-object v7, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v7}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x1e

    iget-object v8, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v8}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x1e

    .line 152
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get8(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v5}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, -0x1e

    .line 155
    iget-object v7, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v7}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x1e

    iget-object v8, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v8}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x1e

    .line 154
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get6(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v5}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, -0x1e

    iget-object v6, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v6}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, -0x1e

    .line 157
    iget-object v7, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v7}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v8}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x1e

    .line 156
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get3(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 160
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iput v3, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 197
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v5, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    invoke-static {v2, v5}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-wrap0(Lcom/android/server/policy/FloatingMonitorPointerEventListener;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iput v4, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 201
    :cond_3
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iput v4, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v2, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    if-eqz v2, :cond_e

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v5, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMotionMode:I

    if-ne v5, v3, :cond_f

    move v5, v3

    :goto_2
    or-int/2addr v2, v5

    if-eqz v2, :cond_10

    .line 207
    sget-boolean v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 208
    const-string/jumbo v2, "FloatingMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BMW]enableFocusedFrame mResizeDirect ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v5, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 209
    const-string/jumbo v5, ", mMotionMode = "

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 209
    iget-object v5, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v5, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_5
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->enableFocusedFrame(Z)V

    .line 212
    return v3

    .line 127
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .line 135
    :catchall_1
    move-exception v2

    monitor-exit v5

    throw v2

    .line 161
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get9(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 163
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 164
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get9(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x3c

    if-ge v0, v2, :cond_7

    .line 165
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 167
    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get9(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x3c

    if-le v0, v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    goto/16 :goto_0

    .line 170
    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get0(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 171
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 172
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get0(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x3c

    if-ge v0, v2, :cond_9

    .line 173
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 175
    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get0(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x3c

    if-le v0, v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    goto/16 :goto_0

    .line 178
    :cond_a
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get6(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 179
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 180
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get6(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x3c

    if-ge v1, v2, :cond_b

    .line 181
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 183
    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get0(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x3c

    if-le v1, v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    goto/16 :goto_0

    .line 186
    :cond_c
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get8(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 188
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get8(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x3c

    if-ge v1, v2, :cond_d

    .line 189
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 191
    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->-get8(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x3c

    if-le v1, v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    goto/16 :goto_0

    :cond_e
    move v2, v4

    .line 206
    goto/16 :goto_1

    :cond_f
    move v5, v4

    goto/16 :goto_2

    .line 214
    :cond_10
    return v4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x1

    .line 99
    sget-boolean v0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "FloatingMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]onScroll e1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", e2 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",dX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    const-string/jumbo v2, ",dY = "

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v0, v0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMotionMode:I

    if-ne v0, v4, :cond_2

    .line 105
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    float-to-int v1, p3

    .line 106
    float-to-int v2, p4

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->moveFloatingWindow(II)V

    .line 112
    :cond_1
    :goto_0
    return v4

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v0, v0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget v1, v1, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 109
    float-to-int v2, p3

    float-to-int v3, p4

    .line 108
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->resizeFloatingWindow(III)V

    goto :goto_0
.end method
