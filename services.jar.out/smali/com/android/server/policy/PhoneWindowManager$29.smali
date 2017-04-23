.class Lcom/android/server/policy/PhoneWindowManager$29;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isGestureIsolated()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1760
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 1761
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1762
    .local v0, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v0, :cond_1

    .line 1763
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_1

    .line 1765
    const/4 v1, 0x1

    return v1

    .line 1761
    .end local v0    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .restart local v0    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 1767
    :cond_1
    return v2
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    .prologue
    .line 1746
    return-void
.end method

.method public onDown()V
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchStart()V

    .line 1750
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 2

    .prologue
    .line 1730
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$29;->isGestureIsolated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    return-void

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_1

    .line 1733
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap22(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1728
    :cond_1
    return-void
.end method

.method public onSwipeFromRight()V
    .locals 2

    .prologue
    .line 1739
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$29;->isGestureIsolated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1740
    return-void

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_2

    .line 1737
    :cond_1
    :goto_0
    return-void

    .line 1742
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap22(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public onSwipeFromTop()V
    .locals 2

    .prologue
    .line 1721
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$29;->isGestureIsolated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    return-void

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap22(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1719
    :cond_1
    return-void
.end method

.method public onUpOrCancel()V
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchEnd()V

    .line 1754
    return-void
.end method
